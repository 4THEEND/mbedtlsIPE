OPENIPE         = ../../../sdk
CC              = $(OPENIPE)/compiler.py
AR				= msp430-elf-ar

CPU             = MSP430F149

INCLUDE         = -I$(OPENIPE)
CFLAGS          = -Wall -std=gnu99 -g -mmcu=$(CPU) -mhwmult=none -D__$(CPU)__ -O2 -D_ISOC99_SOURCE -MMD -D__extension__=


vpath %.c ../include/library

# override MinGW built-in recipe
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

export CC
export AR
export CFLAGS
export INCLUDE
export VPATH
export ENABLE_TESTS

################################################################################
