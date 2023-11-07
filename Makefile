SOURCES := $(wildcard *.md)
TARGETS := $(patsubst %.md,docs/%.html,$(SOURCES))

all: $(TARGETS)

docs/%.html: %.md
	@mkdir -p docs
	pandoc -s $< -o $@

clean:
	rm -rf docs