---
author: phewner
comments: true
date: 2006-08-06 23:13:16+00:00
layout: post
link: http://hewner.com/2006/08/06/flash-error-at-address-0x2/
slug: flash-error-at-address-0x2
title: flash error at address 0x2
wordpress_id: 38
categories:
- Worklogs
---

Pop quiz geeklings: see if you can figure out why Buffalo is an idiot in only 30 lines of output:



<blockquote>
594% make flash
avr-gcc -Wall -Os -Iusbdrv -I. -mmcu=atmega16  -x assembler-with-cpp -c usbdrv/usbdrvasm.S -o usbdrv/usbdrvasm.o
avr-gcc -Wall -Os -Iusbdrv -I. -mmcu=atmega16  -c usbdrv/oddebug.c -o usbdrv/oddebug.o
avr-gcc -Wall -Os -Iusbdrv -I. -mmcu=atmega16  -c main.c -o main.o
avr-gcc -Wall -Os -Iusbdrv -I. -mmcu=atmega16  -o main.bin usbdrv/usbdrv.o usbdrv/usbdrvasm.o usbdrv/oddebug.o main.o
rm -f main.hex main.eep.hex
avr-objcopy -j .text -j .data -O ihex main.bin main.hex
./checksize main.bin
ROM: 2100 bytes (data=6)
RAM: 66 bytes
uisp -dprog=stk500 -dserial=/dev/ttyS0 -dpart=atmega16 --erase --upload --verify if=main.hex
Atmel AVR ATmega8 is found.
Uploading: flash
Verifying: flash
flash error at address 0x2: file=0x7b, mem=0x12
flash error at address 0x6: file=0xbc, mem=0x94
flash error at address 0x7: file=0x01, mem=0x00
...about a million more similar errors...
</blockquote>



If you said "mike configured his microcontroller as an ATmega16 when he is obviously using an ATmega8" you are smarter than me.  

So yes, at least 1 cause of these errors is specifing the right microcontroller.  I edited my Makefile to use atmega8 instead of atmega16 and everything worked like a charm.
