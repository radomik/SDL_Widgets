.PHONY: obj

fast_events:
	gcc -c FeSDLUtils.c      -o ../obj/FeSDLUtils.o
	gcc -c FeFastEvents.c    -o ../obj/FeFastEvents.o
	gcc -c FeTrace.c         -o ../obj/FeTrace.o
	
clean:
	if [ -w ../obj/FeSDLUtils.o ] ; then         rm ../obj/FeSDLUtils.o; fi
	if [ -w ../obj/FeFastEvents.o ] ; then       rm ../obj/FeFastEvents.o; fi
	if [ -w ../obj/FeTrace.o ] ; then            rm ../obj/FeTrace.o; fi

all:
	make clean
	make fast_events
