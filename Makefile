uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

all: build mednafen${exe}

build:
	make -C fsbuild/_build/mednafen-src

mednafen${exe}: fsbuild/_build/mednafen-src/src/mednafen${exe}
	cp fsbuild/_build/mednafen-src/src/mednafen${exe} mednafen${exe}

clean:
	if [ -d fsbuild/_build/mednafen-src ]; then \
		make -C fsbuild/_build/mednafen-src clean; fi
	rm -f mednafen${exe}
