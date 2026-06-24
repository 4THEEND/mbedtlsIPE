include config.mk

CFLAGS += -DMBEDTLS -DMBEDTLS_SHA1_C -DMBEDTLS -DMBEDTLS_SHA

all:
	$(MAKE) -C library ipe

clean:
	$(MAKE) -C library clean
	$(RM) *~
