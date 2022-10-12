# if you type 'make' without arguments, this is the default
PROG    = extract
all:    $(PROG)

# Tell make about the file dependencies
HEAD	= token.h
OBJ     = token.o main.o

# special libraries This can be blank
LIB     =

# select the compiler and flags
# you can over-ride these on the command line e.g. make DEBUG= 
CC      = gcc
DEBUG	= -ggdb
CSTD	=
WARN	= -Wall -Wextra -Werror
CDEFS	=
CFLAGS	= -I. $(DEBUG) $(WARN) $(CSTD) $(CDEFS)

$(OBJ):	$(HEAD)

# specify how to compile the target
$(PROG):	$(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIB) -o $@

#Specify the test number to test at one
LIST1    = 1 2 
LIST2    = 3 4 
LIST3    = 5 

.PHONY: clean alltest test1 test2 test3

alltest:    test1 test2 test3

test1:      $(PROG)
	-./runtest -c3 $(LIST1)

test2:      $(PROG)
	-./runtest -c4 $(LIST2)

test3:      $(PROG)
	-./runtest -c43 $(LIST3)

# remove binaries
clean:
	rm -f $(OBJ) $(PROG)

