#include <stddef.h>
#include <stdarg.h>
#include <string.h>
#include <strings.h>
#include <assert.h>
#include "log2i.h"

#include "CacheCore.h"

CacheCore::CacheCore(uint32_t s, uint32_t a, uint32_t b, const char *pStr)
  : size(s)
  ,lineSize(b)
  ,assoc(a)
  ,numLines(s/b)
{
  if (strcasecmp(pStr, "RANDOM") == 0)
    policy = RANDOM;
  else if (strcasecmp(pStr, "LRU") == 0)
    policy = LRU;
  else {
    assert(0);
  }

  content = new CacheLine[numLines + 1];

  for(uint32_t i = 0; i < numLines; i++) {
    content[i].initialize();
  }
}

CacheCore::~CacheCore() {
  delete [] content;
}

CacheLine *CacheCore::accessLine(uint32_t addr)
{ 
  if (addr == 0) { return NULL; }

	// WIP Code -- has not been tested yet
	uint32_t numBlockOffsetBits = log2i(getLineSize());
	uint32_t numSetBits = log2i(getNumLines()/getAssoc());
	uint32_t numTagBits = 32 - (numSetBits + numBlockOffsetBits);

	// Isolate tag by shifting to the right until all non-tag bits are gone
	uint32_t tag = (addr >> (numSetBits + numBlockOffsetBits));

	// isolate set index
	uint32_t setIndex = (addr << numTagBits) >> (numTagBits + numBlockOffsetBits);

	uint32_t start_of_set = setIndex * getAssoc();
	uint32_t end_of_set = start_of_set + getAssoc();

  // Increment ages
  for (uint32_t i=start_of_set; i<end_of_set; i++) {
    content[i].incAge();
  }

	// Search set for correct line
	for (uint32_t i=start_of_set; i<end_of_set; i++) {

		if (tag == content[i].getTag()) {
      // Reset age of accessed block
      content[i].resetAge();

			return &content[i];
		}
	}

	return NULL;
}

CacheLine *CacheCore::allocateLine(uint32_t addr, uint32_t *rplcAddr) {
	uint32_t numBlockOffsetBits = log2i(getLineSize());
	uint32_t numSetBits = log2i(getNumLines()/getAssoc());
	uint32_t numTagBits = 32 - (numSetBits + numBlockOffsetBits);

	// Idea is that addr >> numBlockOffsetBits isolates the set bits at the bottom
	// And then (1 << numSetBits) - 1 makes a bit mask of the correct length to get the set
	uint32_t set = ((1 << numSetBits) - 1) & (addr >> numBlockOffsetBits);
	uint32_t tag = addr >> (numBlockOffsetBits + numSetBits);
  uint32_t offset = addr & (1 << numBlockOffsetBits);

	// Same as above with accessLine() - not sure about this
	uint32_t start_of_set = set * getAssoc();
	uint32_t end_of_set = start_of_set + getAssoc();
	uint32_t oldest_valid_index = 0;
	uint32_t greatest_age = 0;

	//*rplcAddr = 0;

  // Pass through once and see if there are any invalid lines in the set
	for (uint32_t i = start_of_set; i < end_of_set; i++) {
		if (!content[i].isValid()) {
			content[i].initialize();
			content[i].validate();
			content[i].setTag(addr >> (numBlockOffsetBits + numSetBits));
			return &content[i];
		}

	// I used >= instead of > so that edge cases are taken care of 
	// (if they're all age 0 then it would always set the oldest_valid_index to 0 regardless of which set you're on)
		if (policy == LRU && content[i].getAge() >= greatest_age) {
			oldest_valid_index = i;
			greatest_age = content[i].getAge();
		}
	}

	if(policy == RANDOM) {
		oldest_valid_index = start_of_set + (rand() % getAssoc());
	}

	if (content[oldest_valid_index].isDirty()) {
		// Get address by combining tag and set index
		*rplcAddr = (content[oldest_valid_index].getTag() << (numSetBits + numBlockOffsetBits)) | (set << numBlockOffsetBits) | offset; 
	}

  uint32_t new_index = oldest_valid_index;

  content[new_index].initialize();
  content[new_index].validate();
  content[new_index].setTag(tag);

  return &content[new_index];
}
