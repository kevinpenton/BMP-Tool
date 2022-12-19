bmptool:	bmplib.o main.o
	$(CC) bmplib.o main.o -o $@

bmplib.o:	bmplib.c bmplib.h
	$(CC) -Wall -c $< -o $@

main.o:	bmptool.c bmplib.h 
	$(CC) -Wall -c $< -o $@

clean:
	rm -f bmptool *.o core *~
