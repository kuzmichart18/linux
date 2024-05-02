CC = gcc
CFLAGS = -Wall -Werror -fpic

LIBRARY = libsolution.so
SOURCES = solution.c
OBJECTS = $(SOURCES:.c=.o)

all: $(LIBRARY)

$(LIBRARY): $(OBJECTS)
	$(CC) -shared -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(LIBRARY) $(OBJECTS)
