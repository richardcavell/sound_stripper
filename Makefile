# Makefile
# by Richard Cavell
# June 2025

CC	+=	-std=89 -Wpedantic
CFLAGS	+=	-Wall -Wextra -Werror -O2

.DEFAULT: all
.PHONY: all clean license

all: sound_stripper

sound_stripper: sound_stripper.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -v -f sound_stripper

license:
	@cat Licence.txt
