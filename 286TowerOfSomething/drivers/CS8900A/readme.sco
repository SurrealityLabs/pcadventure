CRYSTAL LAN CS8900/CS8920 ETHERNET ADAPTERS
SCO UNIX ESCOISA LLI DRIVER
===============================================================================


TABLE OF CONTENTS

1.0 CRYSTAL LAN CS8900/CS8920 ETHERNET ADAPTERS
    1.1 Product Overview 
    1.2 Driver Description
 1.2.1 Driver Name
 1.2.2 File in the Driver Package
    1.3 System Requirements
    1.4 Licensing Information

2.0 ADAPTER INSTALLATION and CONFIGURATION
    2.1 Adapter Installation
    2.2 CS8900-based Adapter Configuration
    2.3 CS8920-based Adapter Configuration

3.0 CRYSTAL LAN DRIVER INSTALLATION and CONFIGURATION
    3.1 Driver Installation Procedure 

4.0 BUILDING A 'CUSTOM' DISKETTE
    4.1 Using a Custom media image file on an SCO UNIX 5.X system 
    4.2 Building a Custom diskette on a floppy from an SCO UNIX system
    4.3 Building a Custom diskette on a floppy from a DOS system

5.0 TESTING AND TROUBLESHOOTING
    5.1 Testing the Adapter
        5.1.1 Diagnostic Self-Test
        5.1.2 Diagnostic Network Test
    5.2 Using the Adapter's LEDs
    5.3 Resolving I/O Conflicts

6.0 TECHNICAL SUPPORT
    6.1 Contacting Crystal's Technical Support
    6.2 Information Required Before Contacting Technical Support
    6.3 Crystal's Bulletin Board Service
    6.4 Crystal's Web Site



1.0 CRYSTAL LAN CS8900/CS8920 ETHERNET ADAPTERS
===============================================================================


1.1 PRODUCT OVERVIEW

The CS8900-based ISA Ethernet Adapters from Crystal Semiconductor follow 
IEEE 802.3 standards and support half or full-duplex operation in ISA bus 
computers on 10 Mbps Ethernet networks.  The adapters are designed for 
operation in 16-bit ISA or EISA bus expansion slots and are available in 
10BaseT-only or 3-media configurations (10BaseT, 10Base2, and AUI for 10Base-5
or fiber networks).  

CS8920-based adapters are similar to the CS8900-based adapter with additional
features for Plug and Play (PnP) support and Wakeup Frame recognition.  As such,
the configuration procedures differ somewhat between the two types of adapters. 
Refer to the "Adapter Configuration" section for details on configuring both
types of adapters.


1.2 DRIVER DESCRIPTION

The CS8900/CS8920 Ethernet Adapter driver for SCO UNIX is a STREAMS-based 
Link Layer Interface (LLI) driver.  

1.2.1 Driver Name: cs

1.2.2 Files in the Driver Package:

  ./usr/lib/lli/cs/Driver.o   - LLI driver object code
  ./usr/lib/lli/cs/Space.c    - LLI driver C code
  ./usr/lib/lli/cs/Master     - configuration file
  ./usr/lib/lli/cs/Node       - configuration file
  ./usr/lib/lli/cs/System     - configuration file
  ./usr/lib/lli/info/cs0      - netconfig file
  ./usr/lib/lli/init/cs0      - driver installation script
  ./usr/lib/lli/remove/cs0    - driver removal script
  ./usr/lib/lli/reconf/cs0    - driver reconfiguration script
  ./usr/lib/custom/cs.rmv     - custom removal script
  ./usr/lib/mkdev/cs          - mkdev script
  ./etc/copyrights/08.zeitnet - copyright banner
  ./usr/lib/lli/cs/cssetup    - Installation binary
  ./etc/rc2.d/S15cs           - multiuser mode script
  ./usr/lib/lli/cs/csgetinfo  - multiuser mode binary



1.3 SYSTEM REQUIREMENTS

The following hardware is required:

   * Crystal LAN (CS8900/20-based) Ethernet ISA Adapter   

   * IBM or IBM-compatible PC with:
     * An 80386 or higher processor
     * One available 16-bit ISA or EISA slot
     * 16 bytes of contiguous IO space available between 210h - 370h
     * One available IRQ (5,10,11,or 12 for the CS8900, 3-7,9-15 for CS8920).

   * Appropriate cable (and connector for AUI, 10BASE-2) for your network
     topology.

The following software is required:

   * "Crystal LAN CS8900/CS8920 SCO UNIX Driver" 'custom' Diskette

   * CS8900/20 Setup Utility (DOS-based)

   * SCO UNIX 3.2 version 4.0 - 4.2 and 5.0 (Open Desktop 3.0 or Open Server 5.0)   



1.4 LICENSING INFORMATION

  *****************************************************************************
  * ATTENTION OEMs: If you have obtained a LICENSE TO DISTRIBUTE EXECUTABLE   *
  * SOFTWARE from Crystal Semiconductor for the CS89XX device drivers and     *
  * support files, you may distribute the contents of this diskette with your *
  * CS89XX-based products.  However, you should replace this README.TXT file. *
  * Crystal's technical application support and BBS service are provided only *
  * to customers of Crystal Semiconductor Corporation.                        *
  *****************************************************************************



2.0 ADAPTER INSTALLATION and CONFIGURATION
===============================================================================

Both the CS8900 and CS8920-based adapters are configured using parameters 
stored in on-board EEPROM. You must use the provided DOS-based CS8900/20
Setup Utility if you want to change the adapter's configuration.  The 
CS8900/CS8920 Ethernet Adapter driver does not support hardware configuration
overrides from configuration files.

Since the CS8900/20 Setup Utility is a DOS-based application, you must install
and configure the adapter in a DOS-based PC using the CS8900/20 Setup Utility
before installation in the target SCO UNIX system.  (Not required if installing
a CS8900-based adapter and the default configuration is acceptable.)


        **************************************************************** 
        *                    CS8920-BASED ADAPTERS:                    *
        *                                                              * 
        * CS8920-BASED ADAPTERS ARE PLUG and PLAY ENABLED BY DEFAULT.  * 
        * SCO UNIX 4.x IS NOT A PnP OPERATING SYSTEM. THEREFORE, YOU   *
        * MUST RUN THE CS8900/20 SETUP UTILITY TO DISABLE PnP SUPPORT  *
        * AND TO ACTIVATE THE ADAPTER. DO THE SAME FOR SCO UNIX 5.0.   *
        ****************************************************************


2.1 ADAPTER INSTALLATION

    1.) Turn off the computer and remove its cover.  Install the adapter in 
        any available 16-bit ISA or EISA expansion slot.  Replace the cover.  

    2.) Connect your network cable. 
        The cable must be connected before loading the driver. If your adapter
        supports multiple cable types (twisted-pair, thin coax, and AUI
        connection), connect only one type of cable to the adapter at a time.


2.2 CS8900-BASED ADAPTER CONFIGURATION

CS8900-based adapters shipped from Crystal Semiconductor have been configured
with the following "default" settings:

  Operation Mode:      Memory Mode
  IRQ:                 10
  Base I/O Address:    300
  Memory Base Address: D0000
  Optimization:	       DOS Client
  Transmission Mode:   Half-duplex
  BootProm:            None
  Media Type:	       Autodetect (3-media cards) or 
                       10BASE-T (10BASE-T only adapter)

You should only change the default configuration settings if conflicts with
another adapter exists. To change the adapter's configuration, run the CS8900/20
Setup Utility. 


2.3 CS8920-BASED ADAPTER CONFIGURATION

CS8920-based adapters are shipped from Crystal Semiconductor configured as Plug
and Play (PnP) enabled.  However, since SCO UNIX 4.x is not a PnP compatible
operating system, you must install the CS8920 adapter in a DOS-based PC and run
the CS8900/20 Setup Utility to disable PnP and configure the adapter before
installation in the target SCO UNIX system.  Failure to do this will leave the
adapter inactive and the driver will be unable to communicate with the adapter. 
Do the same with SCO UNIX 5.0.


        **************************************************************** 
        *                    CS8920-BASED ADAPTERS:                    *
        *                                                              * 
        * CS8920-BASED ADAPTERS ARE PLUG and PLAY ENABLED BY DEFAULT.  * 
        * SCO UNIX 4.x IS NOT A PnP OPERATING SYSTEM. THEREFORE, YOU   *
        * MUST RUN THE CS8900/20 SETUP UTILITY TO DISABLE PnP SUPPORT  *
        * AND TO ACTIVATE THE ADAPTER. DO THE SAME FOR SCO UNIX 5.0.   *
        ****************************************************************



3.0 Crystal LAN(tm) DRIVER INSTALLATION and CONFIGURATION
===============================================================================

The following procedure assumes either SCO UNIX Open Desktop 3.0 or Open 
Server 5.0 have been installed on the target system.  If not, do so now.  Also,
it is assumed you will be using the SCO UNIX 'custom' and 'netconfig' utilities
to install and configure the driver and protocol(s).


3.1 Driver Installation Procedure

    1.) Install the pre-configured Crystal LAN Ethernet Adapter and boot SCO 
        UNIX in single-user mode.

        Refer to section "2.0 Adapter Installation and Configuration" if you
        have not already configured the adapter.

    2.) Place the "Crystal LAN CS8900/CS8920 SCO UNIX Driver" 'custom' 
        diskette into the floppy drive /dev/fd0 (typically drive A: in 
	DOS terms).  

        Refer to section "4.0 Creating a 'custom' Diskette" if you received the
        driver package in a dd file format (escoisa.dd). 

    3.) Use the SCO UNIX 'custom" command to install the driver package.

        Refer to the SCO UNIX installation guides for information on using the
        'custom' utility.

        a.) Start 'custom' and select the option to install new software.

 b.) Select the option to install from the host system and use floppy
            drive 0 as the installation media.

        c.) When prompted for "full" or "partial" installation, select "full"
            installation.  

    4.) The driver files will be copied from the floppy to the host system.
        When installation is complete, "CS8900/CS8920 Ethernet Adapter's LLI
        driver" should be listed in the list of installed software.

    5.) Exit the 'custom' utility and start 'netconfig'.

        Refer to the SCO UNIX installation guides for information on using the
        'netconfig' utility.

    6.) Use the 'Add new LAN hardware' option to add the adapter.  Select
        "CS8900/CS8920 Ethernet Adapter driver" when presented the list of
        supported adapters.

    7.) Select the network protocol(s) you want to link to the adapter
        and configure them as prompted.

    8.) Exit 'netconfig' and relink the kernel when prompted.

    9.) Reboot and check for error messages as the system boots.  Also,
        take note of the status messages as you enter multi-user mode. You
        will get an error message if the adapter did not successfully
        connect to the network.



4.0 BUILDING A 'CUSTOM' DISKETTE
===============================================================================

Driver installation using the SCO 'custom' command requires the driver and
support files be available in a format expected by the 'custom' utility. On
SCO UNIX 4.x (Open Desktop 3.0 for instance), the custom command will expect
to retrieve the files from a floppy drive. On SCO UNIX 5.0 (Open Server 5.0)
the custom command can also retrieve the files from a media image file.

If you received the driver package in a media image "dd" file (Driver.dd or 
escoisa.dd) by downloading it from a BBS or Web site, use one of the following 
procedures to build a "custom" diskette, or install from a media image.


4.1 Using a Custom media image file on an SCO UNIX 5.x system 

Assuming the file named Driver.dd is downloaded to your SCO UNIX 
system:

    1.) Make a temporary directory. This example uses the /tmp/cs directory.

               mkdir /tmp/cs

    2.) Copy the Driver.dd file to the temporary directory you just created
        and rename the file.

               cp Driver.dd /tmp/cs/VOL.000.000

    3.) Start "custom" with the new media image file to install the driver.

               custom -p misc:cs -i -z /tmp/cs

    4.) Remove the temporary directory:

               rm -r /tmp/cs


4.2 Building a Custom diskette on a floppy from an SCO UNIX system

Assuming the file named Driver.dd is downloaded to your SCO UNIX 
system:

    1.) Make a temporary directory. This example uses the /tmp/cs directory.

               mkdir /tmp/cs

    2.) Copy the Driver.dd file to the temporary directory you just created.

               cp Driver.dd /tmp/cs/Driver.dd

    3.) Find a blank, formatted diskette and label it as "Crystal LAN 
        CS8900/CS8920 SCO UNIX Driver". Insert the diskette in the floppy drive 
        /dev/fd0 (typically the A: drive in DOS terms) and use dd to copy the 
        image to the floppy. 

               dd if=/tmp/cs/Driver.dd of=/dev/fd0 

    4.) Remove the temporary directory:

               rm -r /tmp/cs

    5.) Start "custom" with the new diskette in the floppy drive to install the
	driver.

        On SCO UNIX 5.x:

               custom -p misc:cs -i -m /dev/fd0
        
        On SCO UNIX 4.x:

               custom -m /dev/fd0
 

4.3 Building a Custom diskette on a floppy from a DOS system

Assuming the file named Driver.dd is downloaded to your DOS system and you
have downloaded the DOS executable RAWRITE.EXE from the SCO ftp site
(as of this writing it can be retrived at ftp://ftp.sco.com/TLS/tls096.zip):

    1.) Make a temporary directory. This example uses the \tmp\cs directory.

               MD \TMP\CS

    2.) Copy the Driver.dd file to the temporary directory you just created.

               COPY DRIVER.DD \TMP\CS\DRIVER.DD

    3.) Find a blank, formatted diskette and label it as "Crystal LAN 
        CS8900/CS8920 SCO UNIX Driver". Insert the diskette in the floppy drive 
        typically the A: drive and use RAWRITE.EXE to copy the image to the 
        floppy. Just follow the prompts for the file name and floppy drive to
        use.

               RAWRITE  

    4.) Remove the temporary directory:

               DEL \TMP\CS
               RD  \TMP\CS

    5.) Remove the diskette from the DOS system and place it into the SCO UNIX
        system floppy drive.

    6.) Start "custom" with the new diskette in the floppy drive to install the
	driver.

        On SCO UNIX 5.x:

               custom -p misc:cs -i -m /dev/fd0
        
        On SCO UNIX 4.x:

               custom -m /dev/fd0


5.0 TESTING AND TROUBLESHOOTING
===============================================================================

5.1 TESTING THE ADAPTER

Once the adapter has been installed and configured, the diagnostic option of the
CS8900/20 Setup Utility can be used to test the functionality of the adapter and
its network connection.  Use the diagnostics 'Self Test' option to test the
functionality of the adapter with the hardware configuration you have assigned.
You can use the diagnostics 'Network Test' to test the ability of the adapter to
communicate across the Ethernet with another PC equipped with a CS8900/20-based
adapter card (it must also be running the CS8900/20 Setup Utility).

         NOTE: The Setup Utility's diagnostics are designed to run in a
         DOS-only operating system environment.  DO NOT run the diagnostics from
         a DOS or command prompt session under Windows 95, Windows NT, OS/2, or
         other operating system.

To run the diagnostics tests on the CS8900/20 adapter:

   1.) Boot DOS on the PC and start the CS8900/20 Setup Utility.

   2.) The adapter's current configuration is displayed.  Hit the ENTER key to
       get to the main menu.

   4.) Select 'Diagnostics' (ALT-G) from the main menu.  
       * Select 'Self-Test' to test the adapter's basic functionality.
       * Select 'Network Test' to test the network connection and cabling.


5.1.1 DIAGNOSTIC SELF-TEST

The diagnostic self-test checks the adapter's basic functionality as well as its
ability to communicate across the ISA bus based on the system resources assigned
during hardware configuration.  The following tests are performed:

   * IO Register Read/Write Test
     The IO Register Read/Write test insures that the CS8900/20 can be 
     accessed in IO mode, and that the IO base address is correct.

   * Shared Memory Test
     The Shared Memory test insures the CS8900/20 can be accessed in memory mode
     and that the range of memory addresses assigned does not conflict with
     other devices in the system.

   * Interrupt Test
     The Interrupt test insures there are no conflicts with the assigned IRQ
     signal.

   * EEPROM Test
     The EEPROM test insures the EEPROM can be read.

   * Chip RAM Test
     The Chip RAM test insures the 4K of memory internal to the CS8900/20 is
     working properly.

   * Internal Loop-back Test
     The Internal Loop Back test insures the adapter's transmitter and 
     receiver are operating properly.  If this test fails, make sure the 
     adapter's cable is connected to the network (check for LED activity for
     example).

   * Boot PROM Test
     The Boot PROM  test insures the Boot PROM is present, and can be read.
     Currently no Boot PROM is available to work with SCO UNIX but if one is 
     present on the adapter, it may produce a conflict with other resources
     if it is not disabled or removed.

Failure of a test item indicates a possible system resource conflict with 
another device on the ISA bus.  In this case, you should use the Manual Setup
option to reconfigure the adapter by selecting a different value for the system
resource that failed.


5.1.2 DIAGNOSTIC NETWORK TEST

The Diagnostic Network Test verifies a working network connection by 
transferring data between two CS8900/20 adapters installed in different PCs on
the same network. (Note: the diagnostic network test should not be run between
two nodes across a router.) 

This test requires that each of the two PCs have a CS8900/20-based adapter
installed and have the CS8900/20 Setup Utility running.  The first PC is 
configured as a Responder and the other PC is configured as an Initiator.  Once
the Initiator is started, it sends data frames to the Responder which returns
the frames to the Initiator.

The total number of frames received and transmitted are displayed on the 
Initiator's display, along with a count of the number of frames received and
transmitted OK or in error.  The test can be terminated anytime by the user at
either PC.

To setup the Diagnostic Network Test:

    1.) Select a PC with a CS8900/20-based adapter and a known working network
        connection to act as the Responder.  Run the CS8900/20 Setup Utility and
        select 'Diagnostics -> Network Test -> Responder' from the main menu. 
        Hit ENTER to start the Responder.

    2.) Return to the PC with the CS8900/20-based adapter you want to test and
        start the CS8900/20 Setup Utility. 

    3.) From the main menu, Select 'Diagnostic -> Network Test -> Initiator'.
        Hit ENTER to start the test.

You may stop the test on the Initiator at any time while allowing the Responder
to continue running.  In this manner, you can move to additional PCs and test
them by starting the Initiator on another PC without having to stop/start the
Responder.



5.2 USING THE ADAPTER'S LEDs

The 2 and 3-media adapters have two LEDs visible on the back end of the board
located near the 10Base-T connector.  

Link Integrity LED: A "steady" ON of the green LED indicates a valid 10Base-T
connection.  (Only applies to 10Base-T.  The green LED has no significance for a
10Base-2 or AUI connection.)

TX/RX LED: The yellow LED lights briefly each time the adapter transmits or
receives data. (The yellow LED will appear to "flicker" on a typical network.)


5.3 RESOLVING I/O CONFLICTS

An IO conflict occurs when two or more adapter use the same ISA resource (IO
address, memory address or IRQ).  You can usually detect an IO conflict in one
of four ways after installing and or configuring the CS8900/20-based adapter:

    1.) The system does not boot properly (or at all).

    2.) The driver can not communicate with the adapter, reporting an "Adapter
        not found" error message.

    3.) You cannot connect to the network or the driver will not load.

    4.) If you have configured the adapter to run in memory mode but the driver
        reports it is using IO mode when loading, this is an indication of a
        memory address conflict.

If an IO conflict occurs, run the CS8900/20 Setup Utility and perform a 
diagnostic self-test.  Normally, the ISA resource in conflict will fail the
self-test.  If so, reconfigure the adapter selecting another choice for the
resource in conflict.  Run the diagnostics again to check for further IO
conflicts.

In some cases, such as when the PC will not boot, it may be necessary to remove
the adapter and reconfigure it by installing it in another PC to run the
CS8900/20 Setup Utility.  Once reinstalled in the target system, run the
diagnostics self-test to ensure the new configuration is free of conflicts
before loading the driver again.

When manually configuring the adapter, keep in mind the typical ISA system
resource usage as indicated in the tables below.

I/O Address    	Device                        IRQ      Device
-----------    	--------                      ---      --------
 200-20F       	Game I/O adapter               3       COM2, Bus Mouse
 230-23F       	Bus Mouse                      4       COM1
 270-27F       	LPT3: third parallel port      5       LPT2
 2F0-2FF       	COM2: second serial port       6       Floppy Disk controller
 320-32F       	Fixed disk controller          7       LPT1
                                              8       Real-time Clock
                                               9       EGA/VGA display adapter  
                                                
                                              12       Mouse (PS/2)             
                                                              
Memory Address  Device                        13       Math Coprocessor
--------------  ---------------------         14       Hard Disk controller
A000-BFFF	EGA Graphics Adpater A000-C7FF	VGA Graphics Adpater B000-BFFF	Mono
Graphics Adapter B800-BFFF	Color Graphics Adapter E000-FFFF	AT BIOS




6.0 TECHNICAL SUPPORT
===============================================================================

6.1 CONTACTING CRYSTAL'S TECHNICAL SUPPORT

Crystal's CS89XX Technical Application Support can be reached at:

Telephone  :(800) 888-5016 (from inside U.S. and Canada)
           :(512) 442-7555 (from outside the U.S. and Canada)
Fax	   :(512) 912-3871
Email	   :ethernet@crystal.cirrus.com
WWW        :http://www.crystal.com


6.2 INFORMATION REQUIRED BEFORE CONTACTING TECHNICAL SUPPORT

Before contacting Crystal for technical support, be prepared to provide as much
of the following information as possible. 

1.) Adapter type (CRD8900, CDB8900, CDB8920, etc.)

2.) Adapter configuration

    * IO Base, Memory Base, IO or memory mode enabled, IRQ, DMA channel
    * Plug and Play enabled/disabled (CS8920-based adapters only)
    * Configured for media auto-detect or specific media type (which type).    

3.) PC System's Configuration

    * Plug and Play system (yes/no)
    * BIOS (make and version)
    * System make and model
    * CPU (type and speed)
    * System RAM
    * SCSI Adapter

4.) Software

    * CS89XX driver and version
    * Your network operating system and version
    * Your system's OS version 
    * Version of all protocol support files

5.) Any Error Message displayed.


6.3 CRYSTAL'S BULLETIN BOARD SERVICE

You can obtain the latest CS89XX drivers and support software from Crystal's
BBS. Access to the BBS is available 24 hours a day, seven days a week. Baud
rates from 300K to 14.4K are supported as well as most common file transfer
protocols.  

To access the BBS, set your terminal software to use 8 data bits, 1 stop bit,
and no parity.  Dial (512) 441-3265 and press <ENTER> after connection is made.
Login using your account name and password.  (If you do not have an account, you
may login as "GUEST".  No password is required for the Guest account.)

>From the main system menu, select the "Enter Public File Area" menu option. 
>From the Public File Area menu, select the "LAN (Local Area Network)" file
area.  A list of the latest drivers and support utilities available for the
CS89XX ISA Ethernet adapter will be presented along with the option to download
the file(s) of your choice.


6.4 CRYSTAL'S WEB SITE

Crystal Semiconductor maintains a web page at http://www.crystal.com with the
the latest drivers and technical publications.



