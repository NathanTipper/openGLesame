# compiler
CC = g++

CCC = gcc

# compiler flags
CFLAGS = -g -Wall -std=c++11

INCLUDES = -I./include

LIBS = -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -lXxf86vm -lXinerama -lXcursor -lrt -lm 

# the build target executable:
default: graphics

graphics: graphics.o glad.o
	$(CC) $(CFLAGS) $(INCLUDES) -o graphics graphics.o glad.o $(LIBS)

graphics.o: graphics.cc glad.o
	$(CC) $(CFLAGS) $(INCLUDES) -c graphics.cc

glad.o: glad.c
	$(CC) $(CFLAGS) $(INCLUDES) -c glad.c

clean:
	$(RM) graphics *.o *~

