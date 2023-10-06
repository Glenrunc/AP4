CC = g++
CFLAGS = -g -Wall -Werror -pedantic 
TARGET = main.exe
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)

	$(CC) $(CFLAGS)	-I. -o $(TARGET) $(OBJS)

%.o : %.cpp

	$(CC) $(CFLAGS) -I. -c -o $@ $<
	
clean:
	rm -f *.o *.so *.exe *.txt