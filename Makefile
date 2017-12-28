# compiler
CC = g++

# compiler flags
CFLAGS = -g -Wall -std=c++11

INCLUDES = -I./include

LIBS = -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -lXxf86vm -lXinerama -lXcursor -lrt -lm 

# the build target executable:
default: graphics

graphics: graphics.o
	$(CC) $(CFLAGS) $(INCLUDES) -o graphics graphics.o $(LIBS)

graphics.o: graphics.cc
	$(CC) $(CFLAGS) $(INCLUDES) -c graphics.cc


clean:
	$(RM) graphics *.o *~
