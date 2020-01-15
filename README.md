# Sipeed Lichee Nano

This is the base Nerves System configuration for the LicheePi Nano. This is a
very early proof of concept port. The most notable hack is that booting
Erlang causes out of memory errors, so swap had to be enabled.

## Usage

This is a `nerves_system`, so to use it in your
[Nerves](https://hexdocs.pm/nerves/getting-started.html) project, just
add: 

```
{:nerves_system_lichee_nano, "~> 0.1.0", runtime: false, targets: :lichee_nano},
```

to your `mix.exs` file, and then you can build firmware for this device with:

```
# fetch dependencies
MIX_TARGET=lichee_nano mix deps.get
# burn a firmware image to a sdcard
MIX_TARGET=lichee_nano mix firmware.burn
```

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