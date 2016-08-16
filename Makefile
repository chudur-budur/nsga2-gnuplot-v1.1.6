CC 		:= gcc
INCLUDES 	:= $(wildcard *.h)
SRC 		:= $(wildcard *.c)
IFLAGS 		:= $(addprefix -I/,$(INCLUDES))
CFLAGS 		:= -g -Wall -pedantic -std=gnu99 $(IFLAGS)
LDFLAGS 	:= -lm 
OBJ 		:= $(patsubst %.c,%.o,$(SRC))
DEPS		:= $(OBJ:.o=.d)

.PHONY: clean all

all: nsga2

nsga2: $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c -MMD -MP $< -o $@

-include $(DEPS)

clean:
	rm -f $(OBJ)
	rm -f *.d	
	rm -f nsga2
	rm -f *.out
	rm -f *~
	rm -f \#*\#
	rm -f input_data/*~
	rm -f input_data/\#*\#

again: clean all
