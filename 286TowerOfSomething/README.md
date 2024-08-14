THE PLAN:
- I have a 14-slot ISA backplane from Surplus Gizmos. That will form the basis of the system. Because there are so many slots on the backplane, the individual cards can be single-function (allowing a smaller and therefore cheaper PCB)
- CPU, ROM, RAM, Chipset, and keyboard controller will go on an ISA card.
- Video card will be a TVGA8900D card that I already ordered.
- I will make a dual 16C550-based serial card, with an option to convert one serial port to a PS/2 mouse input through an ATMEGA328P running some open-source firmware. That covers serial port and mouse input.
- I will make a 16-bit IDE card (using a PAL and some bus transceivers) that has an Option ROM containing the XTIDE BIOS. That'll provide fixed storage (through CF card, optical drive, or SD to IDE adapter)
- I will make a parallel card using an EPP/ECP parallel port controller, so that we can add things like ZIP drives or scanners or what not if we find them.
- I will make a floppy controller using a floppy controller to be named later
- For sound card, probably a PicoGUS or whatever Cirrus Logic chip I have available
- Something simple for Ethernet, like an RTL8019. Might be cheaper to build one than buy one at this point - the chip is $5, and cards are going for like $40+. Pretty sure those were $10-$20 when new.
- For convenience, a CH375-based USB mass storage card.

FUTURE PLANS:
- Can make an upgraded CPU card with an M6117D chip from DM&P/nVidia. 386SX 40 MHz system on a chip, might still be made in 2024.
- Can make an upgraded CPU card with a 486 chip and chipset, if we can find one. Add VLB video onto that card for faaaaaast gaming - has to be on the card, though, because the backplane won't do VLB.
