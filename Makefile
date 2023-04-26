main: ggml.o main.o
#	g++ -pthread -o main ggml.o main.o -Wall -pg -g -fdump-rtl-expand
	g++ -pthread -o main ggml.o main.o 
	#./main -h

ggml.o: ggml.c ggml.h
#	gcc -pthread -O3 -mavx -mavx2 -mfma -mf16c -c ggml.c -Wall -pg -g -fdump-rtl-expand
	gcc -pthread -O3 -mavx -mavx2 -mfma -mf16c -c ggml.c 

main.o: main.cpp ggml.h
#	g++ -pthread -O3 -std=c++11 -c main.cpp -Wall -pg -g -fdump-rtl-expand
	g++ -pthread -O3 -std=c++11 -c main.cpp 

# clean up the directory
clean:
	rm -f *.o main *.expand *.out

