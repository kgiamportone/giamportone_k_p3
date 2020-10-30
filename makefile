FLAGS = -g -Wall -Werror -std=c++14
RUNNAME = submission
.PHONY: submission clean run

submission: Backtrack.o
	g++ $(FLAGS) Backtrack.o -o submission

Backtrack.o: Backtrack.cpp
	g++ -c $(FLAGS) Backtrack.cpp -o Backtrack.o

run: program3
	./$(RUNNAME)

clean:
	rm *.o $(RUNNAME)

memcheck: program3
	valgrind --leak-check=yes ./$(RUNNAME)
