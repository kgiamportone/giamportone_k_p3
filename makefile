FLAGS = -g -Wall -Werror -std=c++14
RUNNAME = program3
.PHONY: program3 clean run

program3: Backtrack.o
	g++ $(FLAGS) Backtrack.o -o program3

Backtrack.o: Backtrack.cpp
	g++ -c $(FLAGS) Backtrack.cpp -o Backtrack.o

run: program3
	./$(RUNNAME)

clean:
	rm *.o $(RUNNAME)

memcheck: program3
	valgrind --leak-check=yes ./$(RUNNAME)
