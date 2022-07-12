# CXXFLAGS=-std=c++20 -fconstexpr-depth=1271242
CXXFLAGS=""
HEADERS=$(wildcard ./*.h)
CLANG=time -p clang++

exedefault: main.m
	$(CLANG) $(CXXFLAGS) -fmodules main.m -o main -lstdc++

PCMS=$(HEADERS:.h=.pcm)

%.pcm: %.h
	$(CLANG) $(CXXFLAGS) -fimplicit-modules -fbuiltin-module-map -Xclang -emit-module -x c++-header -o $@ -fmodules module.modulemap -fmodule-name=$(basename $<)

pcm: $(PCMS)

exepcm: main.m
	$(CLANG) $(CXXFLAGS) -fimplicit-modules -fimplicit-module-maps -fbuiltin-module-map -fmodules main.m -o mainpcm

allpcm: exepcm

all: allpch allpcm exedefault

clean:
	rm -rf *~ *.dSYM *.pch mainpch mainpcm main *.pcm *.tmp
