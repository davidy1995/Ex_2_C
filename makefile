CC = gcc
FLAGS = -Wall -g
OBJECTS_MAIN = main.c
OBJECTS_LIB = my_mat.c

all: libmymat.a connections

connections: $(OBJECTS_MAIN) $(OBJECTS_LIB) my_mat.h
	$(CC) $(FLAGS) $(OBJECTS_MAIN) $(OBJECTS_LIB) my_mat.h -o connections

.PHONY: clean all

clean:
	rm -f *.o *.a *.so connections