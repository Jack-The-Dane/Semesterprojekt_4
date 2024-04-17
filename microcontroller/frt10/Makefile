.PHONY: all flash clean

CC := arm-none-eabi-gcc
LD := arm-none-eabi-ld
OC := arm-none-eabi-objcopy
OD := arm-none-eabi-objdump
SZ := arm-none-eabi-size
NM := arm-none-eabi-nm

CFLAGS := -mthumb \
	-mcpu=cortex-m4 \
	-mfpu=fpv4-sp-d16 \
	-mfloat-abi=softfp \
	-ffunction-sections \
	-fdata-sections \
	-std=c99 -Wall -pedantic \
	-Os -O0 -g \
	-DPART_TM4C123GH6PM -Dgcc \
	-I ./inc \
	-I ./port/TivaM4 \
	-D__TI_VFP_SUPPORT__

# LDFLAGS := -T tm4c123.ld --entry ResetISR --gc-sections
LDFLAGS := --gc-sections
OBJCOPYFLAGS := -O binary

SOURCES := $(wildcard src/*.c)
EXTRA_SOURCES := $(wildcard port/TivaM4/*.c)
OBJECTS := $(patsubst src/%.c,build/%.o,$(SOURCES))
EXTRA_OBJECTS := $(patsubst port/TivaM4/%.c,build/%.o,$(EXTRA_SOURCES))

all: main

clean:
	rm -rf build

$(OBJECTS): $(SOURCES)
	mkdir -p build
	$(CC) $(CFLAGS) -MD -MF build/$(notdir $*.d) -c $< -o build/$(notdir $@)

$(EXTRA_OBJECTS): $(EXTRA_SOURCES)
	mkdir -p build
	$(CC) $(CFLAGS) -MD -MF build/$(notdir $*.d) -c $< -o build/$(notdir $@)

build/frt10.a: $(OBJECTS) $(EXTRA_OBJECTS)
	ar rcs $@ $^

main: build/frt10.a

info: build/frt10.a
	$(NM) build/frt10.a -a
