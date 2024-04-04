# DCS-930L Firmware Reverse Engineering Toolkit

Welcome to the DCS-930L This repository contains tools and modifications to aid in the reverse engineering of the DCS-930L firmware.

## Modifications

Several modifications have been made to enhance the functionality and usability of the firmware emulation environment:

1. **Startup Script:** A startup script (`startup.sh`) has been added to simplify the emulation process.
2. **Libnvram.so Adjustment:** Line 338 to 342 of `libnvram.so` has been removed and relocated to ensure proper functioning of the NVRAM emulator.
3. **Firmadyne Integration:** The Firmadyne folder has been included to facilitate firmware emulation.
4. **Alphapd Patch:** Alphapd has been patched using Ghidra to address the issue of being unable to obtain an IP from sysinfo.

## Usage

To get started, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/itwizardo/DCS-930L.git
   ```

2. Navigate to the directory where you downloaded the files:
   ```bash
   cd DCS-930L
   ```

3. Enter the chroot environment:
   ```bash
   sudo chroot . ./bin/sh
   ```

4. Run the startup script:
   ```bash
   ./startup.sh
   ```

5. Set environment variables:
   ```bash
   export LD_PRELOAD=/firmadyne/libnvram.so
   export HOME=.
   export RANDFILE=$HOME/.rnd
   ```

6. Start Alphapd:
   ```bash
   alphapd
   ```

**Note:** Ensure to remove the `$` or `#` signs when executing commands. They are simply indicators of shell prompt types.

## Disclaimer

This project is solely intended for educational purposes as part of a school project for Novi Hogeschool. Any usage beyond educational activities is not endorsed.

## Author

Georgio T. - [itwizardo](https://github.com/itwizardo)

Feel free to contribute to this project and improve the tools for firmware reverse engineering!
