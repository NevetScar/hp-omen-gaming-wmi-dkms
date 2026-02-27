KVER ?= $(shell uname -r)
KDIR ?= /lib/modules/$(KVER)/build
PWD  ?= $(shell pwd)

obj-m += hp-wmi.o

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
