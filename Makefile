ifeq ($(RPI_MODEL),rbp1)
	ARCH=armhf
	CROSS_COMPILE=arm-linux-gnueabihf
endif

ifeq ($(RPI_MODEL),rbp2)
	ARCH=armhf
	CROSS_COMPILE=arm-linux-gnueabihf
endif

ifeq ($(RPI_MODEL),rbp3)
	ARCH=arm64
	CROSS_COMPILE=aarch64-linux-gnu 
endif

all:
	@echo "For build package , please type make rbpX"

rbp1 rbp2 rbp3:
	RPI_MODEL=$@ $(MAKE) .package
	
.package:
	dpkg-buildpackage -us -uc -B -a$(ARCH)

reset:
	debclean
