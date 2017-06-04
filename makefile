vpath %.cpp ./src

.PHONY: clean all

all : hello.out

clean :
	$(RM) bin/Linux/* hello.out

bin/Linux/%.o : %.cpp
	$(CXX) -c $(CXXFLAGS) $^ -o $@

hello.out : bin/Linux/main.o
	$(CXX) $(LDFLAGS) $^ -o $@
