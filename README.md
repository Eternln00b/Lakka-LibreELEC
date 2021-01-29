# Lakka - The DIY retro emulation console

Lakka is a lightweight Linux distribution that transforms a small computer into a full blown emulation console.

* **Powerful** - Built on top of the famous RetroArch emulator, Lakka is able to emulate a large range of hardware and has some useful features such as Braid-like rewinding, joypad hotplug and video streaming.
* **User friendly** - Lakka is easy to setup and use. Once installed to your SD card, you just have to put your rom on the card, plug your joypad and enjoy your favorite old games. We also support PS3 and XBox360 controllers so you don't have to buy new ones. 
* **Low cost** - We try our best to keep the hardware required to run Lakka as cheap as possible. The software is optimized to run fast even on low end computers. The power can be supplied by any micro USB adapter like the one for your smartphone.
* **Open source** - Our code is free as in freedom and hosted on Github (though the project uses emulators that forbid commercialisation). We accept external contributions, and we do our best to integrate our own patches into upstream projects.

## Installation instructions

Please refer to our website http://www.lakka.tv/get on how to setup Lakka.

## Support

* [FAQ](https://github.com/libretro/Lakka-LibreELEC/wiki/FAQ)
* #lakkatv on irc.freenode.org
* [Discord](https://discord.gg/BNFR4hM)
* [Forums](https://forums.libretro.com/c/libretro/lakka-tv-general)

# notes from Eternln00b

![alt text](https://a404dded.files.wordpress.com/2021/01/sergte.png?w=540)

The goal of this fork is to make the Asus Tinker Board and Tinker Board S compatibles with the Retroflag Boxes ( NESPi Case PLUS, SUPERPi CASE-U, SUPERPi CASE-J, MEGAPi CASE ).

If you want to compile this projet type this command : 

PROJECT=Rockchip DEVICE=TinkerBoard ARCH=arm make -j$(nproc) image

Then use this installation script => https://gist.github.com/Eternln00b/1fbc89d2cbfd2ef4363fd28dd50ebb6f to install the safe shutdown script

![alt text](https://a404dded.files.wordpress.com/2021/01/sergte-2.png?w=540)
![alt_text](https://a404dded.files.wordpress.com/2021/01/back.png?w=540)
