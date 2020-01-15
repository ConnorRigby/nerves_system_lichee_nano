# Sipeed Lichee Nano

This is the base Nerves System configuration for the LicheePi Nano. This is a
very early proof of concept port. The most notable hack is that booting
Erlang causes out of memory errors, so swap had to be enabled.

## What works

* booting erlang (was surprisingly difficult)
* usb ethernet gadget
* firmware upgrades (sort of, see below)

## What doesnt work

* rebooting
* probably more idk

## Special Thanks

Most of the hard work on this project was done by
[George Hilliard](https://github.com/thirtythreeforty). This includes the
Linux Kernel port and buildroot package for of `sunxi-tools-f1c100s`.
You should definitely check out
[his blog post](https://www.thirtythreeforty.net/posts/2019/12/my-business-card-runs-linux/)