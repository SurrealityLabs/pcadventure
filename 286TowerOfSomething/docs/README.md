| File | Description |
| ---- | ----------- |
| 82c235.pdf | SCAT (Single-Chip AT) datasheet from https://web.archive.org/web/20170104035435/http://limpopo.com.ua/images/docs/82c235.pdf |
| 82c236.pdf | SCATsx datasheet. 386sx version of SCAT chipset |
| 1989_Chips_And_Technologies_Short_Form_Catalog.pdf | Chips and Technologies 1989 calendar, mentioning NEAT and SCAT chipsets amongst others |
| CS8220-CHIPS.pdf | Chips and Technologies 5-chip AT chipset datasheet |
| CS8221_NEAT_Data_Book_198710.pdf | Chips and Technologies 4-chip New Enhanced AT (NEAT) chipset datasheet |
| CS8232_mb_schem.pdf | Chips and Technologies CS8323 386 motherboard schematic |
| GM82C765B.pdf | GM82C765B Floppy Disk controller datasheet |
| NEAT_Chipset_Motherboard_Schematic_1987.pdf | Schematic for CS8221-based NEAT motherboard |
| ST78C36ACJ44.pdf | ST78C36 EPP/ECP Parallel Port controller chip datasheet |
| super-286tr-x.pdf | Schematic for a SCAT-based motherboard (and then some IO) from https://eluancm.net/hardware/286-microatx-motherboard/ |

Other useful pages on the web:
- https://www.lo-tech.co.uk/wiki/Lo-tech_ISA_USB_Adapter - CH375-based USB mass storage card for ISA
- https://gitlab.com/hakfoo1/ch37x-bios - faster ROM BIOS for booting from CH375
- https://www.toughdev.com/content/2018/04/usb-flash-drives-on-8-bit-isa-bus-using-ch375-isb-to-usb-adapter/
- https://github.com/necroware/ps2-serial-mouse-adapter - converting a PS/2 mouse to a serial port. Useful because the keyboard controller won't support PS/2 mice, and Serial mice are much harder to come by
- https://theretroweb.com/motherboards/s/jc-information-systems-corporation-jcs286-s - another SCAT-based motherboard. Can probably grab the BIOS image from this one.
- https://alexandrugroza.ro/microelectronics/system-design/isa-io-interface/index.html - schematic for a multi-I/O card. Can be broken down into floppy controller, serial card, parallel card, and IDE card.
- https://github.com/hkzlab/ISA_DualUARTParport - Schematic for UART + Parallel card
- https://www.vogons.org/viewtopic.php?t=36122&start=20 - discussion of getting a PS/2 compatible 8242 keyboard controller working on older motherboards
- https://github.com/urjaman/ps2-to-rs232/ - firmware to convert PS2 to Serial mouse on an ATTiny85

For the 386:
- Schematic of a basic design with the M6117C is available in https://pestingers.net/pdfs/other-computers/circuit-cellar/1998/circuit-cellar-095.pdf
- Schematic of a full design with the M6117D is available in https://github.com/UzixLS/pc-kharon-386
- Old product page for the M6117C is at https://web.archive.org/web/19980504195541fw_/http://www.ali.com.tw/product/m6117c.htM
- Datasheet for M6117D is at http://www.dmp.com.tw/app/webcamera/pdf/m6117d.pdf

For the 486:
- Schematic of a board with the 85C471/85C407 is available at https://hackaday.io/project/183453-stebus-486dx-pc-at-compatible-board (along with the BIOS)
- PCB of the Trio64V+ VLB video card is available at https://github.com/matt1187/765VL, and the design is discussed at https://www.vogons.org/viewtopic.php?f=63&t=76647
