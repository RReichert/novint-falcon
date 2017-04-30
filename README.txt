System Setup
------------

The following setup was performed on Fedora 25:


```
	$ sudo dnf install kernel-$(uname -r) kernel-devel-$(uname -r)
	$ sudo dnf groupinstall "C Development Tools and Libraries"
	$ sudo dnf install \
		git \
		cmake \
		boost-devel-1.60.0 \
		qt5-devel-5.7.1

```

Compile
-------

```
	$ mkdir build
	$ cd build
	$ cmake ..
	$ cmake --build .
```