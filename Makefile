CC=g++
CFLAGS=-c -Wall

all: quiz3project

quiz3project: collegemain.cc college.cc course.cc college.h course.h node.h tarray.h
	$(CC) collegemain.o college.o course.o college.o course.o node.o tarray.o -o quiz3project

collegemain.o: collegemain.cpp
	$(CC) $(CFLAGS) collegemain.cpp

college.o:college.cpp
	$(CC) $(CFLAGS) college.cpp

course.o: course.cpp
	$(CC) $(CFLAGS) course.cpp

college.o: college.h
	$(CC) $(CFLAGS) college.h

course.o: course.h
	$(CC) $(CFLAGS) course.h

node.o: node.h
	$(CC) $(CFLAGS) node.h

tarray.o: tarray.h
	$(CC) $(CFLAGS) tarray.h

clean:
	rm -rf *o quiz3project
