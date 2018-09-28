/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-XHCI.aml, Thu Sep 27 14:54:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001FA (506)
 *     Revision         0x01
 *     Checksum         0x55
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299XHCI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299XHCI", 0x00000000)
{
    External (_SB_.PCI0.XHCI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.XHCI)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x1B)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xAF, 0xA2, 0x00, 0x00                           // ....
                    }, 

                    "name", 
                    Buffer (0x34)
                    {
                        "ASMedia / Intel X299 Series Chipset XHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x34)
                    {
                        "ASMedia ASM1074 / Intel X299 Series Chipset USB 3.0"
                    }, 

                    "AAPL,current-available", 
                    0x0834, 
                    "AAPL,current-extra", 
                    0x0A8C, 
                    "AAPL,current-in-sleep", 
                    0x0A8C, 
                    "AAPL,max-port-current-in-sleep", 
                    0x0834, 
                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

