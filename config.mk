OPENIPE         = ../../../sdk
CC              = $(OPENIPE)/compiler.py
AR				= msp430-elf-ar

CPU             = MSP430F149

INCLUDE         = -I$(OPENIPE)
CFLAGS          = -Wall -std=gnu99 -g -mmcu=$(CPU) -mhwmult=none -D__$(CPU)__ -O2 -D_ISOC99_SOURCE -MMD -D__extension__=


vpath %.c ../lib/source/

# override MinGW built-in recipe
%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

# DO NOT EDIT AFTER THIS POINT:
ifeq ($(ENABLE_TESTS), true)
CFLAGS += -DENABLE_TESTS
else
CFLAGS += -DDISABLE_TESTS
endif

export CC
export AR
export CFLAGS
export VPATH
export ENABLE_TESTS

################################################################################
