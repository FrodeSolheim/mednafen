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
	make -C _build clean
	# rm -Rf build.fs dist.fs
	rm -f mednafen${exe}
