# Flyme Patchrom for Micromax Unite 2,aka a106
![Flyme 6 Logo](https://raw.githubusercontent.com/NESPTechnology/FlymeOS_devices_P8Lite/android-6.0/images/flyme.png)


To get started with Flyme patchrom, you'll need to get familiar with Git and Repo. 

# Getting Started

```bash

mkdir flyme

cd flyme

repo init -u https://github.com/FlymeOS/manifest.git -b marshmallow

repo sync -c -j4

git clone https://github.com/maharudra108/flyme_devices_a106 -b mm-pc devices/a106
```

# Build
```bash
. build/envsetup.sh  

ca106

flyme fullota
```
# Working
```bash
Appx. everything for me.
You are welcome to find issue and notify me .
```