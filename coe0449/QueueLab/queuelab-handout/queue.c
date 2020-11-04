 /*
 * This program implements a queue supporting both FIFO and LIFO
 * operations.:x
 *
 * It uses a singly-linked list to represent the set of queue elements
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "harness.h"
#include "queue.h"

/*
  Create empty queue.
  Return NULL if could not allocate space.
*/
queue_t *q_new()
{
    queue_t *qtest = (queue_t *) malloc(sizeof(queue_t));
    if (qtest == NULL) return NULL;
    queue_t *q = qtest;

    int *numelements = (int *) malloc(sizeof(int));
    if (numelements == NULL) {
	if (q != NULL) free(q);
	return NULL;
    }
    q->numelements = numelements;
    *q->numelements = 0;

    q->head = NULL;
    q->tail = NULL;

    return q;
}

/* Free all storage used by queue */
void q_free(queue_t *q)
{

   // Free null queue - Freeing q here doesn't do anything
   if (q == NULL) return;
   
   list_ele_t *ptr = q->head;
   list_ele_t *temp = q->head;


   // Walk through and free each element  
   while(ptr != NULL) {
	temp = ptr;
	ptr = ptr->next;
        free(temp->value);
	free(temp);
   }

   free(q->numelements);
   free(q);

   return;
}

/*
  Attempt to insert element at head of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_head(queue_t *q, char *s)
{
    if (q == NULL) return false;
    list_ele_t *temp = q->head;

    list_ele_t *newhead = (list_ele_t *) malloc(sizeof(list_ele_t));
    if (newhead == NULL) return false;
    char *c  = (char *) malloc(strlen(s) + 1);
    if (c == NULL) {
	if (newhead != NULL) free(newhead);
	return false;
    }
    
    q->head = newhead;
    strcpy(c, s);
    q->head->value = c;

    q->head->next = temp;
    if (temp == NULL) q->tail = q->head;
    
    (*q->numelements)++;
    
    return true;
}


/*
  Attempt to insert element at tail of queue.
  Return true if successful.
  Return false if q is NULL or could not allocate space.
  Argument s points to the string to be stored.
  The function must explicitly allocate space and copy the string into it.
 */
bool q_insert_tail(queue_t *q, char *s)
{
    if (q == NULL) return false;

    if (*q->numelements == 0){
        return q_insert_head(q, s);
    }
    
    list_ele_t *ptr = q->tail;
    list_ele_t *newt = (list_ele_t *) malloc(sizeof(list_ele_t));
    if (newt == NULL) return false;

    char *c = (char *) malloc(strlen(s) + 1);
    if (c == NULL) {
	if (newt != NULL) free(newt);
	return false;
    }
    strcpy(c, s);
    newt->value = c;

    ptr->next  = newt;
    newt->next = NULL;
    q->tail = newt;

    (*q->numelements)++;

    return true;
}

/*
  Attempt to remove element from head of queue.
  Return true if successful.
  Return false if queue is NULL or empty.
  If sp is non-NULL and an element is removed, copy the removed string to *sp
  (up to a maximum of bufsize-1 characters, plus a null terminator.)
  The space used by the list element and the string should be freed.
*/
bool q_remove_head(queue_t *q, char *sp, size_t bufsize)
{
    if (q == NULL || *q->numelements == 0) return false;

    if (sp != NULL) {
      strncpy(sp, q->head->value, bufsize-1);
      sp[bufsize-1] = '\0';
    }

    if (q->head->next == NULL) {
        free(q->head->value);
        free(q->head);
        q->head = NULL;
	(*q->numelements)--;
        return true;
    }

    list_ele_t *temp = q->head;
    q->head = q->head->next;

    free(temp->value);
    free(temp);

    (*q->numelements)--;

    return true;

}

/*
  Return number of elements in queue.
  Return 0 if q is NULL or empty
 */
int q_size(queue_t *q)
{
    if (q == NULL) return 0;
    return *q->numelements;
}

/*
  Reverse elements in queue
  No effect if q is NULL or empty
  This function should not allocate or free any list elements
  (e.g., by calling q_insert_head, q_insert_tail, or q_remove_head).
  It should rearrange the existing ones.
 */
void q_reverse(queue_t *q)
{
    if (q == NULL) return;
    if (q->head == NULL) return; // Zero Element LL
    if (q->head->next == NULL) return; // One Element LL 
    
    list_ele_t *curr = q->head;
    list_ele_t *prev = q->head;
    list_ele_t *next = q->head;
    
    while (curr != NULL) {
 	next = curr->next;

	if (prev == curr) {
		curr->next = NULL;
        }

        else {
		curr->next = prev;
        }
	prev = curr;
	curr = next;
    }

    list_ele_t *temp = q->head;
    q->head = q->tail;
    q->tail = temp;
}
