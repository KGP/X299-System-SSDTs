/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-PMCR.aml, Thu Sep 27 14:54:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000015A (346)
 *     Revision         0x01
 *     Checksum         0x71
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299PMCR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299PMCR", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.PMC1, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0)
    {
        Scope (PMC1)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (PMCR)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
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
                Local0 = Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "model", 
                        Buffer (0x1E)
                        {
                            "Intel X299 Series Chipset PMC"
                        }, 

                        "name", 
                        Buffer (0x0A)
                        {
                            "Intel PMC"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xA1, 0xA2, 0x00, 0x00                           // ....
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "PMC-Controller"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,a2a1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

