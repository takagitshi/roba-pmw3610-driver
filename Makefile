CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Werror -O2

.PHONY: test clean

test: tests/pointer_acceleration_test
	./tests/pointer_acceleration_test

tests/pointer_acceleration_test: tests/pointer_acceleration_test.c src/pointer_acceleration.c include/pmw3610/pointer_acceleration.h
	$(CC) $(CFLAGS) -Iinclude tests/pointer_acceleration_test.c src/pointer_acceleration.c -o $@

clean:
	$(RM) tests/pointer_acceleration_test
