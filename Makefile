LILYPOND  := lilypond
LILYFLAGS :=

TARGET := overture.pdf
SRC    := $(TARGET:%.pdf=%.ly)


%.mid:
	$(LILYPOND) $(LILYFLAGS) $(SRC)
%.pdf:
	$(LILYPOND) $(LILYFLAGS) $(SRC)
%.ps:
	$(LILYPOND) $(LILYFLAGS) $(SRC)

.PHONY: all
all: $(TARGET)

$(TARGET): $(SRC)


.PHONY: clean
clean:
	$(RM) $(TARGET) *.mid *.ps
