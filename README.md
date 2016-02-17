# Blinky
An Elixir blinky example project build with Bakeware & Nerves meant to run on the RPi Model A+ board.

## Prerequisites
  1. Install homebrew (for OSX)
  1. Install elixir

## Install bake
Paste this into your terminal

```bash
ruby -e "$(curl -fsSL https://bakeware.herokuapp.com/bake/install)"
```

## Bakefile
__TODO:__ add description of the purpose of Bakefile

## Build firmware
Download a system
```shell
bake system get
```

Download a toolchain
```shell
bake toolchain get
```

Compile firmware

```shell
bake firmware
```

Burn to SD

```shell
sudo fwup -a -i _images/blinky-rpi2.fw -t complete
```
