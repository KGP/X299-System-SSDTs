/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/CLOVER/ACPI/patched/SSDT-X299-Vega-Fontier.aml, Thu Nov  8 13:17:31 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002C3 (707)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299VEGA"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299VEGA", 0x00000000)
{
    External (_SB_.PC02.BR2A, DeviceObj)
    External (_SB_.PC02.BR2A.PEGP, DeviceObj)
    External (_SB_.PC02.BR2A.SL05, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC02.BR2A)
    {
        Scope (SL05)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PEGP)
        {
            Device (EGP0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (GFX0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x18)
                            {
                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-1"
                                }, 

                                "model", 
                                Buffer (0x16)
                                {
                                    "Vega Frontier Edition"
                                }, 

                                "name", 
                                Buffer (0x08)
                                {
                                    "ATY_GPU"
                                }, 

                                "@0,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x04, 0x00, 0x00                           // ....
                                }, 

                                "@1,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x04, 0x00, 0x00                           // ....
                                }, 

                                "@2,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x04, 0x00, 0x00                           // ....
                                }, 

                                "@3,connector-type", 
                                Buffer (0x04)
                                {
                                     0x00, 0x08, 0x00, 0x00                           // ....
                                }, 

                                "@0,name", 
                                Buffer (0x0D)
                                {
                                    "ATY,Kamarang"
                                }, 

                                "@1,name", 
                                Buffer (0x0D)
                                {
                                    "ATY,Kamarang"
                                }, 

                                "@2,name", 
                                Buffer (0x0D)
                                {
                                    "ATY,Kamarang"
                                }, 

                                "@3,name", 
                                Buffer (0x0D)
                                {
                                    "ATY,Kamarang"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x0A)
                            {
                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-1"
                                }, 

                                "name", 
                                Buffer (0x1F)
                                {
                                    "Vega Frontier Edition HD-Audio"
                                }, 

                                "model", 
                                Buffer (0x1F)
                                {
                                    "Vega Frontier Edition HD-Audio"
                                }, 

                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-2"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }
        }
    }
}

