CC = gcc
CFLAGS = -Wall -Wextra
LIBS = -lSDL2
INCLUDES = -I/usr/include/SDL2/
SRCS = snake.c
OBJS = $(SRCS:.c=.o)
MAIN = snake

$(MAIN): $(OBJS)
	$(CC) $(CFALGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o *~ $(MAIN)
