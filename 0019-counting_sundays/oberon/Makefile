OBC = voc

SRC = CountingSundays.Mod

EXEC = CountingSundays

all: $(EXEC)

$(EXEC): $(SRC)
	$(OBC) $(SRC) -m

clean:
	rm -f $(EXEC) *.o *.c *~

run: $(EXEC)
	./$(EXEC)

.PHONY: all clean run
