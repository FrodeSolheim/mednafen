uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

all: build mednafen${exe}

build:
	make -C _build

mednafen${exe}: _build/src/mednafen${exe}
	cp _build/src/mednafen${exe} mednafen${exe}

clean:
	if [ -d _build ]; then \
		make -C _build clean; fi
	rm -f mednafen${exe}
