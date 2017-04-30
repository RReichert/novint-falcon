MODULENAME=falcon_module
KERNEL_SOURCE:=/lib/modules/$(shell uname -r)/build

obj-m += $(MODULENAME).o

module:
	make -C $(KERNEL_SOURCE) M=$(PWD) modules

clean:
	make -C $(KERNEL_SOURCE) M=$(PWD) clean

install:
	sudo insmode $(MODULENAME).ko
	sudo chmod 666 /dev/$((MODULENAME)

uninstall:
	sudo rmmod $(MODULENAME)
