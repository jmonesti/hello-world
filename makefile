vpath %.cpp ./src

.PHONY: clean all

OS	= $(shell uname -s)
BIN	= ./bin/$(OS)

all : hello.out

clean :
	$(RM) $(BIN)/* hello.out

$(BIN)/%.o : %.cpp
	-mkdir -p $(BIN)
	$(CXX) -c $(CXXFLAGS) $^ -o $@

hello.out : $(BIN)/main.o
	$(CXX) $(LDFLAGS) $^ -o $@
