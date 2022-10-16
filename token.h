/* 
 * Header file for PA4
 */
#ifndef TOKEN_H
#define TOKEN_H
/*
 * Constants (some are for testing only)
 */
#define MINCOL  2       /* min number of columns (data fields) */
#define MAXCOL  50      /* max number of columns (data fields) */
#define BUFSZ   8192    /* input buffer size limit */
#define INDELIM ','     /* input column (data field) delimiter */

 /*
  * Function prototypes
  */
int token(char *, char, int, char **, unsigned long, char *);
#endif
