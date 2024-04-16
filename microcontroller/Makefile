.PHONY: all flash clean

CC := arm-none-eabi-gcc
LD := arm-none-eabi-ld
OC := arm-none-eabi-objcopy
OD := arm-none-eabi-objdump
SZ := arm-none-eabi-size

CFLAGS := -mthumb \
	-mcpu=cortex-m4 \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp \
	-ffunction-sections \
	-fdata-sections \
	-std=c99 -Wall -pedantic \
	-Os -O0 -g \
	-DPART_TM4C123GH6PM -DTARGET_IS_BLIZZARD_RA1 -Dgcc

LDFLAGS := -T tm4c123.ld --entry ResetISR --gc-sections
OBJCOPYFLAGS := -O binary

SOURCES := $(wildcard *.c)
OBJECTS := $(patsubst %.c, build/%.o, $(SOURCES))
DEPENDS := $(patsubst %.c, build/%.d, $(SOURCES))

all: main

test:
	echo "SOURCES: $(SOURCES)"
	echo "OBJECTS: $(OBJECTS)"
	echo "DEPENDS: $(DEPENDS)"

flash: all
	sudo lm4flash build/main.bin

clean: ./frt10/Makefile
	rm -rf build
	rm -rf frt10/build

-include $(DEPENDS)

build/:
	mkdir -p build

build/frt10.o: ./frt10/Makefile build/
	make -C ./frt10
	cp ./frt10/build/frt10.o build/frt10.o

build/%.o: %.c Makefile build/frt10.o build/
	mkdir -p build
	$(CC) $(CFLAGS) -MD -MF build/$(notdir $*.d) -c $< -o build/$(notdir $@)

main: $(OBJECTS)
	$(LD) $(addprefix build/, $(notdir $^)) $(LDFLAGS) -o build/main.axf
	$(OC) $(OBJCOPYFLAGS) build/main.axf build/main.bin
	$(OD) -Sd -W build/main.axf > build/main.lss
	$(SZ) build/main.axf
