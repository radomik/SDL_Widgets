.PHONY: main asm obj src

MAKEFILE_NAME  := "build"
export LDFLAGS = 
export CFLAGS  = -Wall #-msse3 -march=native -mtune=native -pipe -O1
export AFLAGS  = $(CFLAGS) -S -masm=intel -fverbose-asm
export CC      = /usr/lib/colorgcc/bin/x86_64-pc-linux-gnu-gcc
export AR	   = ar
export RANLIB  = ranlib
export AR_OPTS = rcsv
export ODIR    = $(realpath ../obj)
export ASMDIR  = $(realpath ../asm)
export SRCDIR  = $(realpath ../src)
export INCDIR  = $(realpath ../include)
export LIBDIR  = $(realpath ../lib)
export LIBNAME = $(LIBDIR)/libcobject.a
export INC     = -I$(INCDIR)

all:
	@echo "$(MAKEFILE_NAME): LDFLAGS:     $(LDFLAGS)"
	@echo "$(MAKEFILE_NAME): CFLAGS:      $(CFLAGS)"
	@echo "$(MAKEFILE_NAME): AFLAGS:      $(AFLAGS)"
	@echo "$(MAKEFILE_NAME): CC:          $(CC)"
	@echo "$(MAKEFILE_NAME): SRCDIR:      $(SRCDIR)"
	@echo "$(MAKEFILE_NAME): ASMDIR:      $(ASMDIR)"
	@echo "$(MAKEFILE_NAME): ODIR:        $(ODIR)"
	@echo "$(MAKEFILE_NAME): INCDIR:      $(INCDIR)"
	@echo "$(MAKEFILE_NAME): LIBDIR:      $(LIBDIR)"
	@echo "$(MAKEFILE_NAME): INC:         $(INC)"
	@echo "------------------------------------------------------------"
	cd $(SRCDIR); make all
	
asm:
	cd $(SRCDIR); make asm

clean:
