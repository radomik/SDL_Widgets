.PHONY: main asm obj src

MAKEFILE_NAME  	:= "cobject"

asm:
	$(CC) $(AFLAGS) $(INC) -c coError.c -o $(ASMDIR)/coError.asm
	$(CC) $(AFLAGS) $(INC) -c coList1D.c -o $(ASMDIR)/coList1D.asm
	$(CC) $(AFLAGS) $(INC) -c coList2D.c -o $(ASMDIR)/coList2D.asm
	$(CC) $(AFLAGS) $(INC) -c coMemory.c -o $(ASMDIR)/coMemory.asm
	$(CC) $(AFLAGS) $(INC) -c coObjectModel.c -o $(ASMDIR)/coObjectModel.asm
	$(CC) $(AFLAGS) $(INC) -c coString.c -o $(ASMDIR)/coString.asm
	$(CC) $(AFLAGS) $(INC) -c coThreads.c -o $(ASMDIR)/coThreads.asm
	$(CC) $(AFLAGS) $(INC) -c coUtils.c -o $(ASMDIR)/coUtils.asm

all:
	$(CC) $(CFLAGS) $(INC) -c coError.c -o $(ODIR)/coError.o
	$(CC) $(CFLAGS) $(INC) -c coList1D.c -o $(ODIR)/coList1D.o
	$(CC) $(CFLAGS) $(INC) -c coList2D.c -o $(ODIR)/coList2D.o
	$(CC) $(CFLAGS) $(INC) -c coMemory.c -o $(ODIR)/coMemory.o
	$(CC) $(AFLAGS) $(INC) -c coObjectModel.c -o $(ASMDIR)/coObjectModel.o
	$(CC) $(CFLAGS) $(INC) -c coString.c -o $(ODIR)/coString.o
	$(CC) $(CFLAGS) $(INC) -c coThreads.c -o $(ODIR)/coThreads.o
	$(CC) $(CFLAGS) $(INC) -c coUtils.c -o $(ODIR)/coUtils.o
	
	cd $(ODIR); make all
