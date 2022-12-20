CC=gcc
CFLAGS=-I.
DEPS = hello.h
SRCS = main.c hello.c
OBJS = $(SRCS:.c=.o)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o hellomake