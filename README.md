# DCS-932L Firmware Reverse Engineering Toolkit

Welcome to the DCS-932L Firmware. This repository contains tools and modifications to aid in the reverse engineering of the DCS-932L firmware.

## Modifications

Several modifications have been made to enhance the functionality and usability of the firmware emulation environment:

1. **Startup Script:** Added a startup script (`startup.sh`) to simplify emulation.
2. **Libnvram.so Adjustment:** Removed lines 338 to 342 of `libnvram.so` to ensure proper functioning of the NVRAM emulator. The modified file has been placed in the correct folder.
3. **Firmadyne Integration:** Added the Firmadyne folder to facilitate firmware emulation.
4. **Alphapd Patch:** Patched Alphapd using Ghidra to resolve the error preventing IP retrieval from sysinfo.
5. **Qemu-mipsel-static Addition:** Included qemu-mipsel-static in the folder for enhanced functionality.

## Usage

To begin using the toolkit, follow these steps:

1. Clone the repository:
   git clone https://github.com/itwizardo/DCS-932L.git

2. Navigate to the directory where you downloaded the files:
   cd DCS-932L

3. Install QEMU user emulation tools:
   sudo apt update
   sudo apt install qemu-user-static

4. Copy qemu-mipsel-static into the firmware's usr/bin folder:
   sudo cp /usr/bin/qemu-mipsel-static ./usr/bin/

5. Enter the chroot environment using qemu-mipsel-static:
   sudo chroot . /usr/bin/qemu-mipsel-static /bin/sh

6. Run the startup script:
   ./startup.sh

7. Set environment variables (inside chroot):
   export LD_PRELOAD=/firmadyne/libnvram.so
   export HOME=.
   export RANDFILE=$HOME/.rnd

8. Start Alphapd:
   alphapd


## Disclaimer

This project is for educational purposes only, developed as part of a school project for Novi Hogeschool.

## Author

Georgio T. - [itwizardo](https://github.com/itwizardo)

Feel free to contribute to this project and improve the tools for firmware reverse engineering!
