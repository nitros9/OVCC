# change application name here (executable output name)
TARGET=testlib
 
# compiler
CC=gcc
# linker
LD=gcc
# debug
DEBUG=#-g
# optimisation
OPT=-O2
# warnings
WARN=#-Wall
# Include Path 
INCDIR=-I../CoCo
# Obj Dir
ODIR = obj

PTHREAD=#-pthread

SDLINC=`sdl2-config --cflags`
AGARINC=`agar-config --cflags`
IDIR=$(INCDIR) $(SDLINC) $(AGARINC)
 
CCFLAGS=$(IDIR) $(DEBUG) $(OPT) $(WARN) -fPIC
 
SDLLIB=`sdl2-config --libs`
AGARLIB=`agar-config --libs`
LIBS=$(AGARLIB) $(SDLLIB) -lregex

LDFLAGS=-shared $(PTHREAD) -s -Wl,--out-implib,libharddisk.a

UNUSEDOBJS= 

_OBJS=harddisk.o cloud9.o cc3vhd.o fileops.o iniman.o
OBJS= $(patsubst %,$(ODIR)/%,$(_OBJS))

testlib: obj/testlib.o harddisk.dll
	$(LD) -o $@ $< $(SDLLIB) -Wl,--subsystem,console

$(ODIR):
	mkdir -p $@

$(OBJS): | $(ODIR)

$(ODIR)/testlib.o: ../testlib.c | $(ODIR)
	$(CC) -O0 -g -c $(SDLINC) $< -o $@

harddisk.dll: $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) $(LIBS) -o $@ 
    
$(ODIR)/harddisk.o: harddisk.c harddisk.h defines.h cloud9.h ../CoCo/fileops.h
	$(CC) -c $(CCFLAGS) $< -o $@

$(ODIR)/cloud9.o: cloud9.c cloud9.h
	$(CC) $(CCFLAGS) -c $< -o $@

$(ODIR)/cc3vhd.o: cc3vhd.c cc3vhd.h defines.h harddisk.h ../CoCo/fileops.h
	$(CC) $(CCFLAGS) -c $< -o $@
    
$(ODIR)/fileops.o: ../CoCo/fileops.c ../CoCo/fileops.h
	$(CC) $(CCFLAGS) -c $< -o $@
    
$(ODIR)/iniman.o: ../CoCo/iniman.c ../Coco/iniman.h
	$(CC) $(CCFLAGS) -I../CoCo -c $< -o $@
    
clean:
	rm -f $(ODIR)/*.o $(TARGET) harddisk.dll libharddisk.a

install:
	cp harddisk.dll ../CoCo/libs

test:
	.\testlib.exe harddisk.dll ModuleName
