#!/bin/bash
openocd -f interface/raspberrypi-swd.cfg -f target/rp2040.cfg -c "program pico_w/mqtt/mqtt_example.elf verify reset exit"
