/* 
   This implements a proxy server that listens on a port 
   specified by the command line argument and then directs 
   GET requests from the client to the specified server. 

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

static const char *user_agent = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *accept_h = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding = "Accept-Encoding: gzip, deflate\r\n";
static const char *connection = "Connection: close\r\n";

typedef struct {
    short valid;
    char  url[MAXLINE];
    char  hostname[MAXLINE];
    char  serverport[6];
    char  path[MAXLINE];
    char  hostheader[MAXLINE];
    char  otherheaders[MAXLINE];
} Request;

int main()
{
    printf("%s", user_agent_hdr);
    return 0;
}


