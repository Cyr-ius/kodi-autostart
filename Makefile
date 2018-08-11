include ../depends/Makefile.include
DEPS= ../depends/Makefile.include Makefile

LIBDYLIB=kodi-autostart

all:

rbpi1 rbpi2 rbpi3 linux64:
	MODEL=$@ $(MAKE) package

package:
	dpkg-buildpackage -us -uc -B -a$(ARCH) -tc
