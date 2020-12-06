#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <iostream>

#include "Cache.h"
#include "CPU.h"


Cache::Cache(const char *name)
: MemObj(name)
  ,readHits("readHits")
  ,readMisses("readMisses")
  ,writeHits("writeHits")
  ,writeMisses("writeMisses")
  ,writeBacks("writeBacks")
{
  GError *error = NULL;
  // Get hit delay from config file
  hitDelay = g_key_file_get_integer(config->keyfile, name, "hitDelay", NULL);
  if(error != NULL) g_error (error->message);
  // Create cacheCore after parsing config file
  int size = g_key_file_get_integer(config->keyfile, name, "size", &error);
  if(error != NULL) g_error (error->message);
  int assoc = g_key_file_get_integer(config->keyfile, name, "assoc", NULL);
  if(error != NULL) g_error (error->message);
  int bsize = g_key_file_get_integer(config->keyfile, name, "bsize", NULL);
  if(error != NULL) g_error (error->message);
  gchar* pStr = g_key_file_get_string(config->keyfile, name, "replPolicy", NULL);
  if(error != NULL) g_error (error->message);

  assert(size > 0);
  assert(assoc > 0);
  assert(bsize > 0);
  assert(pStr != NULL);

  cacheCore = new CacheCore(size, assoc, bsize, pStr);

  g_free(pStr);
}

Cache::~Cache()
{
  delete cacheCore;
}

void Cache::access(MemRequest *mreq)
{
  mreq->addLatency(hitDelay);

  if(verbose) {
    const char *memOp;
    switch(mreq->getMemOperation()){
      case MemRead: memOp = "MemRead"; break;
      case MemWrite: memOp = "MemWrite"; break;
      case MemWriteBack: memOp = "MemWriteBack"; break;
      default: assert(0); break;
    }
    printf("%s->access(%s, addr: %u, latency: %u)\n", getName().c_str(), memOp, mreq->getAddr(), mreq->getLatency());
  }

  switch(mreq->getMemOperation()){
    case MemRead:
      read(mreq);
      break;
    case MemWrite:
      write(mreq);
      break;
    case MemWriteBack:
      writeBack(mreq);
      break;
    default:
      assert(0);
      break;
  }
}

// Get string that describes MemObj
std::string Cache::toString() const
{
  std::string ret;
  ret += "[" + getName() + "]\n";
  ret += "device type = cache\n";
  ret += "write policy = " + getWritePolicy() + "\n";
  ret += "hit time = " + std::to_string(hitDelay) + "\n";
  ret += cacheCore->toString();
  ret += "lower level = " + getLowerLevel() + "\n";
  return ret;
}

// Get string that summarizes access statistics
std::string Cache::getStatString() const
{
  std::string ret;
  ret += getName() + ":";
  ret += readHits.toString() + ":";
  ret += readMisses.toString() + ":";
  ret += writeHits.toString() + ":";
  ret += writeMisses.toString() + ":";
  ret += writeBacks.toString();
  return ret;
}

// Get string that dumps all valid lines in cache
std::string Cache::getContentString() const
{
  std::string ret;
  ret += "[" + getName() + "]\n";
  ret += cacheCore->getContentString();
  return ret;
}

// WBCache: Write back cache.  Allocates a dirty block on write miss.

WBCache::WBCache(const char *name)
: Cache(name)
{
  // nothing to do
}
WBCache::~WBCache() 
{
  // nothing to do
}

void WBCache::read(MemRequest *mreq)
{
  CacheLine* line = cacheCore->accessLine(mreq->getAddr());

  // Read miss - nothing to do for read hit
  if (line == NULL) {
    uint32_t *rplcAddr = new uint32_t(0);

    readMisses.inc();
    getLowerLevelMemObj()->access(mreq);

    cacheCore->allocateLine(mreq->getAddr(), rplcAddr);

    // Have to replace something
    if (*rplcAddr != 0) {
      writeBacks.inc();
      MemRequest* mreq2 = new MemRequest(*rplcAddr, MemWriteBack);
      getLowerLevelMemObj()->access(mreq2);
      delete mreq2;
    }

    return;
  }

  readHits.inc();
}

void WBCache::write(MemRequest *mreq)
{
  CacheLine* line = cacheCore->accessLine(mreq->getAddr());

  // Write hit
  if (line != NULL) {
    line->makeDirty();
    writeHits.inc();
    return;
  }

  // Write miss
  writeMisses.inc();
  mreq->mutateWriteToRead();
  getLowerLevelMemObj()->access(mreq);

  uint32_t *rplcAddr = new uint32_t(0);
  CacheLine *allocatedLine = cacheCore->allocateLine(mreq->getAddr(), rplcAddr);
  allocatedLine->makeDirty();

  // Have to replace something
  if (*rplcAddr != 0) {
    writeBacks.inc();
    MemRequest* mreq2 = new MemRequest(*rplcAddr, MemWriteBack);
    getLowerLevelMemObj()->access(mreq2);
    delete mreq2;
  }
}

void WBCache::writeBack(MemRequest *mreq)
{
  CacheLine* line = cacheCore->accessLine(mreq->getAddr());

  // Writeback miss
  if (line == NULL) {
    getLowerLevelMemObj()->access(mreq);
  }

  else {
    line->makeDirty();
  }
}

// WTCache: Write through cache. Always propagates writes down.

WTCache::WTCache(const char *name)
: Cache(name)
{
  // nothing to do 
}

WTCache::~WTCache()
{
  // nothing to do
}

void WTCache::read(MemRequest *mreq)
{
  CacheLine* line = cacheCore->accessLine(mreq->getAddr());

  if (line == NULL) {
    readMisses.inc();
    getLowerLevelMemObj()->access(mreq);

    cacheCore->allocateLine(mreq->getAddr(), 0);
    return;
  }

  readHits.inc();
}

void WTCache::write(MemRequest *mreq)
{
  CacheLine* line = cacheCore->accessLine(mreq->getAddr());

  if (line == NULL) {
    writeMisses.inc();
  }

  else {
    writeHits.inc();
  }

  getLowerLevelMemObj()->access(mreq);
}

void WTCache::writeBack(MemRequest *mreq)
{
  // No reasonable design will have a WB cache on top of a WT cache
  assert(0);
}
