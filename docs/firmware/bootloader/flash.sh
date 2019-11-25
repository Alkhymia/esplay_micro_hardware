#!/bin/sh

esptool.py --chip esp32 --port com3 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0x1000 bootloader.bin 0xf000 phy_init_data.bin 0x10000 esplay-base-firmware.bin 0x8000 partitions.bin