

.PHONY: all install

all: build

build: main.cpp
	g++ -c main.cpp -o main.o
	g++ main.o -o dslink-host

install: dslink-host
	install -d $(DESTDIR)/usr/bin
	install -m 655 dslink-host $(DESTDIR)/usr/bin

