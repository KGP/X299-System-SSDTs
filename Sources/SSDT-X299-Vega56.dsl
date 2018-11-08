/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/CLOVER/ACPI/patched/SSDT-X299-Vega56.aml, Thu Nov  8 01:12:48 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000877 (2167)
 *     Revision         0x01
 *     Checksum         0x41
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
    External (_SB_.PNLF.BSET, MethodObj)    // 1 Arguments
    External (BRTL, IntObj)
    External (DTGP, MethodObj)    // 5 Arguments
    External (EGPS, IntObj)

    Scope (_SB.PC02.BR2A)
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
                    Name (ATIB, Buffer (0x0100){})
                    Method (ATIF, 2, Serialized)
                    {
                        If ((Arg0 == Zero))
                        {
                            Return (AF00 ())
                        }

                        If ((Arg0 == One))
                        {
                            Return (AF01 ())
                        }

                        If ((Arg0 == 0x02))
                        {
                            Return (AF02 ())
                        }
                        Else
                        {
                            CreateWordField (ATIB, Zero, SSZE)
                            CreateWordField (ATIB, 0x02, VERN)
                            CreateDWordField (ATIB, 0x04, NMSK)
                            CreateDWordField (ATIB, 0x08, SFUN)
                            SSZE = Zero
                            VERN = Zero
                            NMSK = Zero
                            SFUN = Zero
                            Return (ATIB) /* \_SB_.PC02.BR2A.PEGP.EGP0.GFX0.ATIB */
                        }
                    }

                    Method (AF00, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        SSZE = 0x0C
                        VERN = One
                        NMSK = 0x0C
                        SFUN = 0x03
                        Return (ATIB) /* \_SB_.PC02.BR2A.PEGP.EGP0.GFX0.ATIB */
                    }

                    Method (AF01, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, VMSK)
                        CreateDWordField (ATIB, 0x06, FLGS)
                        SSZE = 0x0A
                        VMSK = 0x03
                        FLGS = One
                        Return (ATIB) /* \_SB_.PC02.BR2A.PEGP.EGP0.GFX0.ATIB */
                    }

                    Method (AF02, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, PSBI)
                        CreateByteField (ATIB, 0x09, FPWR)
                        CreateByteField (ATIB, 0x0A, FPID)
                        SSZE = 0x0D
                        PSBI = 0x08
                        FPWR = Zero
                        FPID = EGPS /* External reference */
                        Return (ATIB) /* \_SB_.PC02.BR2A.PEGP.EGP0.GFX0.ATIB */
                    }

                    Method (ABCM, 1, NotSerialized)
                    {
                        BRTL = Arg0
                        \_SB.PNLF.BSET (Arg0)
                        Return (Zero)
                    }

                    Method (ABCL, 0, NotSerialized)
                    {
                        Return (Package (0x52)
                        {
                            0x50, 
                            0x32, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50
                        })
                    }

                    Device (LCD)
                    {
                        Method (_ADR, 0, Serialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (ABCL ())
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            ABCM (Arg0)
                        }

                        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                        {
                            Return (BRTL) /* External reference */
                        }
                    }

                    Method (_DOD, 0, Serialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x01)
                        {
                            0x0110
                        })
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    OperationRegion (PEGH, PCI_Config, Zero, 0x40)
                    Field (PEGH, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        DID0,   16, 
                        GCMD,   8, 
                        Offset (0x24), 
                        BAR4,   32
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x0E)
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
                                    "Radeon RX Vega 56 8GB"
                                }, 

                                "PP_PhmSoftPowerPlayTable", 
                                Buffer (One)
                                {
                                    /* 0000 */  0xA7, 0x02, 0x08, 0x01, 0x00, 0x5C, 0x00, 0xEF,  // .....\..
                                    /* 0008 */  0x06, 0x00, 0x00, 0x0E, 0x2C, 0x00, 0x00, 0x1B,  // ....,...
                                    /* 0010 */  0x00, 0x48, 0x00, 0x00, 0x00, 0x80, 0xA9, 0x03,  // .H......
                                    /* 0018 */  0x00, 0xF0, 0x49, 0x02, 0x00, 0x32, 0x00, 0x08,  // ..I..2..
                                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01,  // ........
                                    /* 0030 */  0x5C, 0x00, 0x40, 0x02, 0x37, 0x02, 0x94, 0x00,  // \.@.7...
                                    /* 0038 */  0x8F, 0x01, 0xB4, 0x00, 0x1E, 0x01, 0x7A, 0x00,  // ......z.
                                    /* 0040 */  0x8C, 0x00, 0xAD, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0048 */  0x63, 0x02, 0x00, 0x00, 0x90, 0x00, 0x99, 0x02,  // c.......
                                    /* 0050 */  0x5E, 0x01, 0x34, 0x01, 0x88, 0x01, 0x68, 0x36,  // ^.4...h6
                                    /* 0058 */  0x02, 0x00, 0x71, 0x02, 0x02, 0x02, 0x00, 0x00,  // ..q.....
                                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  // ........
                                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x07, 0x00,  // ........
                                    /* 0070 */  0x03, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0078 */  0x00, 0x00, 0x01, 0x08, 0x20, 0x03, 0x84, 0x03,  // .... ...
                                    /* 0080 */  0xB6, 0x03, 0xE8, 0x03, 0x1A, 0x04, 0x4C, 0x04,  // ......L.
                                    /* 0088 */  0x65, 0x04, 0x65, 0x04, 0x01, 0x01, 0xE2, 0x04,  // e.e.....
                                    /* 0090 */  0x01, 0x01, 0x84, 0x03, 0x00, 0x06, 0x60, 0xEA,  // ......`.
                                    /* 0098 */  0x00, 0x00, 0x00, 0x40, 0x19, 0x01, 0x00, 0x01,  // ...@....
                                    /* 00A0 */  0xDC, 0x4A, 0x01, 0x00, 0x02, 0x00, 0x77, 0x01,  // .J....w.
                                    /* 00A8 */  0x00, 0x03, 0x90, 0x91, 0x01, 0x00, 0x05, 0x6C,  // .......l
                                    /* 00B0 */  0xB0, 0x01, 0x00, 0x07, 0x01, 0x08, 0xD0, 0x4C,  // .......L
                                    /* 00B8 */  0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,  // ........
                                    /* 00C0 */  0x00, 0x00, 0x00, 0x1C, 0x83, 0x01, 0x00, 0x01,  // ........
                                    /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 00D0 */  0x88, 0xBC, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                                    /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0xEF, 0x01,  // ........
                                    /* 00E0 */  0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 00E8 */  0x00, 0x00, 0xF0, 0x17, 0x02, 0x00, 0x04, 0x00,  // ........
                                    /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8,  // ........
                                    /* 00F8 */  0x3F, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,  // ?.......
                                    /* 0100 */  0x01, 0x00, 0x00, 0x00, 0x80, 0x64, 0x02, 0x00,  // .....d..
                                    /* 0108 */  0x06, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                                    /* 0110 */  0x00, 0x70, 0x88, 0x02, 0x00, 0x07, 0x00, 0x00,  // .p......
                                    /* 0118 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                                    /* 0120 */  0x60, 0xEA, 0x00, 0x00, 0x00, 0x40, 0x19, 0x01,  // `....@..
                                    /* 0128 */  0x00, 0x00, 0xDC, 0x4A, 0x01, 0x00, 0x00, 0x90,  // ...J....
                                    /* 0130 */  0x5F, 0x01, 0x00, 0x00, 0x00, 0x08, 0x28, 0x6E,  // _.....(n
                                    /* 0138 */  0x00, 0x00, 0x00, 0x2C, 0xC9, 0x00, 0x00, 0x01,  // ...,....
                                    /* 0140 */  0xF8, 0x0B, 0x01, 0x00, 0x02, 0x80, 0x38, 0x01,  // ......8.
                                    /* 0148 */  0x00, 0x03, 0x90, 0x5F, 0x01, 0x00, 0x04, 0xF4,  // ..._....
                                    /* 0150 */  0x91, 0x01, 0x00, 0x05, 0xD0, 0xB0, 0x01, 0x00,  // ........
                                    /* 0158 */  0x06, 0xC0, 0xD4, 0x01, 0x00, 0x07, 0x00, 0x08,  // ........
                                    /* 0160 */  0x6C, 0x39, 0x00, 0x00, 0x00, 0x24, 0x5E, 0x00,  // l9...$^.
                                    /* 0168 */  0x00, 0x01, 0xFC, 0x85, 0x00, 0x00, 0x02, 0xAC,  // ........
                                    /* 0170 */  0xBC, 0x00, 0x00, 0x03, 0x34, 0xD0, 0x00, 0x00,  // ....4...
                                    /* 0178 */  0x04, 0x68, 0x6E, 0x01, 0x00, 0x05, 0x08, 0x97,  // .hn.....
                                    /* 0180 */  0x01, 0x00, 0x06, 0xEC, 0xA3, 0x01, 0x00, 0x07,  // ........
                                    /* 0188 */  0x00, 0x01, 0x68, 0x3C, 0x01, 0x00, 0x00, 0x01,  // ..h<....
                                    /* 0190 */  0x04, 0x3C, 0x41, 0x00, 0x00, 0x00, 0x00, 0x00,  // .<A.....
                                    /* 0198 */  0x50, 0xC3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80,  // P.......
                                    /* 01A0 */  0x38, 0x01, 0x00, 0x01, 0x00, 0x00, 0x90, 0x5F,  // 8......_
                                    /* 01A8 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x01, 0x08, 0x00,  // ........
                                    /* 01B0 */  0x98, 0x85, 0x00, 0x00, 0x40, 0xB5, 0x00, 0x00,  // ....@...
                                    /* 01B8 */  0x60, 0xEA, 0x00, 0x00, 0x50, 0xC3, 0x00, 0x00,  // `...P...
                                    /* 01C0 */  0x01, 0x80, 0xBB, 0x00, 0x00, 0x60, 0xEA, 0x00,  // .....`..
                                    /* 01C8 */  0x00, 0x94, 0x0B, 0x01, 0x00, 0x50, 0xC3, 0x00,  // .....P..
                                    /* 01D0 */  0x00, 0x02, 0x78, 0xFF, 0x00, 0x00, 0x40, 0x19,  // ..x...@.
                                    /* 01D8 */  0x01, 0x00, 0xB4, 0x27, 0x01, 0x00, 0x50, 0xC3,  // ...'..P.
                                    /* 01E0 */  0x00, 0x00, 0x03, 0xB4, 0x27, 0x01, 0x00, 0xDC,  // ....'...
                                    /* 01E8 */  0x4A, 0x01, 0x00, 0xDC, 0x4A, 0x01, 0x00, 0x50,  // J...J..P
                                    /* 01F0 */  0xC3, 0x00, 0x00, 0x04, 0x80, 0x38, 0x01, 0x00,  // .....8..
                                    /* 01F8 */  0x90, 0x5F, 0x01, 0x00, 0xDC, 0x4A, 0x01, 0x00,  // ._...J..
                                    /* 0200 */  0x50, 0xC3, 0x00, 0x00, 0x05, 0xDC, 0x4A, 0x01,  // P.....J.
                                    /* 0208 */  0x00, 0x00, 0x77, 0x01, 0x00, 0x90, 0x5F, 0x01,  // ..w..._.
                                    /* 0210 */  0x00, 0x50, 0xC3, 0x00, 0x00, 0x06, 0x00, 0x77,  // .P.....w
                                    /* 0218 */  0x01, 0x00, 0x00, 0x77, 0x01, 0x00, 0x90, 0x5F,  // ...w..._
                                    /* 0220 */  0x01, 0x00, 0x50, 0xC3, 0x00, 0x00, 0x07, 0x00,  // ..P.....
                                    /* 0228 */  0x77, 0x01, 0x00, 0x90, 0x91, 0x01, 0x00, 0x00,  // w.......
                                    /* 0230 */  0x77, 0x01, 0x00, 0x50, 0xC3, 0x00, 0x00, 0x01,  // w..P....
                                    /* 0238 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0240 */  0x0B, 0x2A, 0x1A, 0x04, 0x06, 0x24, 0x13, 0x50,  // .*...$.P
                                    /* 0248 */  0x00, 0x0A, 0x00, 0x54, 0x03, 0x90, 0x01, 0x90,  // ...T....
                                    /* 0250 */  0x01, 0x90, 0x01, 0x90, 0x01, 0x90, 0x01, 0x90,  // ........
                                    /* 0258 */  0x01, 0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0260 */  0x02, 0x06, 0x31, 0x07, 0xA5, 0x00, 0xA5, 0x00,  // ..1.....
                                    /* 0268 */  0xA5, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x59, 0x00,  // ..,...Y.
                                    /* 0270 */  0x69, 0x00, 0x4A, 0x00, 0x4A, 0x00, 0x5F, 0x00,  // i.J.J._.
                                    /* 0278 */  0x73, 0x00, 0x73, 0x00, 0x64, 0x00, 0x40, 0x00,  // s.s.d.@.
                                    /* 0280 */  0x90, 0x92, 0x97, 0x60, 0x96, 0x00, 0x90, 0x55,  // ...`...U
                                    /* 0288 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0298 */  0x00, 0x02, 0x02, 0xD4, 0x30, 0x00, 0x00, 0x02,  // ....0...
                                    /* 02A0 */  0x10, 0x60, 0xEA, 0x00, 0x00, 0x02, 0x10         // .`.....
                                }, 

                                "PP_DisablePowerContainment", 
                                Buffer (One)
                                {
                                     0x01                                             // .
                                }, 

                                "PP_FuzzyFanControl", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-1"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Return (0x80000002)
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    OperationRegion (HDAH, PCI_Config, Zero, 0x40)
                    Field (HDAH, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        DID0,   16
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x16)
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

                                "layout-id", 
                                Buffer (0x04)
                                {
                                     0x01, 0x00, 0x00, 0x00                           // ....
                                }, 

                                "name", 
                                Buffer (0x1F)
                                {
                                    "Radeon RX Vega 56 8GB HD-Audio"
                                }, 

                                "model", 
                                Buffer (0x1F)
                                {
                                    "Radeon RX Vega 56 8GB HD-Audio"
                                }, 

                                "device_type", 
                                Buffer (0x16)
                                {
                                    "Multimedia Controller"
                                }, 

                                "device-id", 
                                Buffer (0x04)
                                {
                                     0xF8, 0xAA, 0x00, 0x00                           // ....
                                }, 

                                "subsystem-id", 
                                Buffer (0x04)
                                {
                                     0xF8, 0xAA, 0x00, 0x00                           // ....
                                }, 

                                "subsystem-vendor-id", 
                                Buffer (0x04)
                                {
                                     0x02, 0x10, 0x00, 0x00                           // ....
                                }, 

                                "compatible", 
                                Buffer (0x0D)
                                {
                                    "pci1002,aaf8"
                                }, 

                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-1"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Return (0x80000002)
                }
            }
        }
    }
}

