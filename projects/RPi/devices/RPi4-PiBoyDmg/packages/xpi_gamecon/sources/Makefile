ifneq (${KERNELRELEASE},)
	obj-m  = xpi_gamecon.o
else
	KERNELDIR        ?= /lib/modules/$(shell uname -r)/build
	MODULE_DIR       ?= $(shell pwd)
	ARCH             ?= $(shell uname -i)
	CROSS_COMPILE    ?=
	INSTALL_MOD_PATH ?= /
endif

all: modules

modules:
	${MAKE} ARCH="${ARCH}" CROSS_COMPILE="${CROSS_COMPILE}" -C ${KERNELDIR} M="${MODULE_DIR}"  modules

modules_install:
	${MAKE} ARCH="${ARCH}" CROSS_COMPILE="${CROSS_COMPILE}" INSTALL_MOD_PATH="${INSTALL_MOD_PATH}" -C ${KERNELDIR} M="${MODULE_DIR}"  modules_install

clean:
	rm -f *.o *.ko *.mod.c .*.o .*.ko .*.mod.c .*.cmd *~
	rm -f Module.symvers Module.markers modules.order
	rm -rf .tmp_versions
