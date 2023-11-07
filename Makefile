SOURCES := $(wildcard *.md)
TARGETS := $(patsubst %.md,build/%.html,$(SOURCES))

all: $(TARGETS)

build/%.html: %.md
	@mkdir -p build
	pandoc -s $< -o $@

clean:
	rm -rf build