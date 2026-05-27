# hare-raylib Makefile
#
# Build targets:
#   make         - build the example
#   make check   - verify the module compiles

HARE = hare
HAREFLAGS =
EXAMPLE = example/basic_window

all: $(EXAMPLE)

$(EXAMPLE): raylib/*.ha example/basic_window.ha
	$(HARE) build $(HAREFLAGS) -l raylib -o $@ example/basic_window.ha

check:
	$(HARE) build $(HAREFLAGS) -l raylib -o /dev/null example/basic_window.ha

clean:
	rm -f $(EXAMPLE)

.PHONY: all check clean
