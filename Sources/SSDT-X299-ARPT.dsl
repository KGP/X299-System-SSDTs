/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-ARPT.aml, Thu Sep 27 14:54:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001BB (443)
 *     Revision         0x01
 *     Checksum         0xDC
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299ARPT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299ARPT", 0x00000000)
{
    External (_SB_.PC03.BR3D, DeviceObj)
    External (_SB_.PC03.BR3D.PEGP, DeviceObj)
    External (_SB_.PC03.BR3D.SL0C, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PC03.BR3D)
    {
        Scope (SL0C)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0E)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xA0, 0x43, 0x00, 0x00                           // .C..
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-3"
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "AirPort Controller"
                        }, 

                        "model", 
                        Buffer (0x4A)
                        {
                            "OSX WIFI Broadcom BCM94360CD 802.11 a/b/g/n/ac + Bluetooth 4.0 Controller"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci14e4,43a0"
                        }, 

                        "name", 
                        Buffer (0x10)
                        {
                            "AirPort Extreme"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

