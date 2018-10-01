/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-X299-Vega.aml, Thu Sep 27 14:54:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000895 (2197)
 *     Revision         0x01
 *     Checksum         0x81
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
                                    "Radeon RX Vega 64 8GB"
                                }, 

                                "PP_PhmSoftPowerPlayTable", 
                                Buffer (One)
                                {
                                    /* 0000 */  0xB6, 0x02, 0x08, 0x01, 0x00, 0x5C, 0x00, 0xE1,  // .....\..
                                    /* 0008 */  0x06, 0x00, 0x00, 0xEE, 0x2B, 0x00, 0x00, 0x1B,  // ....+...
                                    /* 0010 */  0x00, 0x48, 0x00, 0x00, 0x00, 0x80, 0xA9, 0x03,  // .H......
                                    /* 0018 */  0x00, 0xF0, 0x49, 0x02, 0x00, 0x32, 0x00, 0x08,  // ..I..2..
                                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01,  // ........
                                    /* 0030 */  0x5C, 0x00, 0x4F, 0x02, 0x46, 0x02, 0x94, 0x00,  // \.O.F...
                                    /* 0038 */  0x9E, 0x01, 0xBE, 0x00, 0x28, 0x01, 0x7A, 0x00,  // ....(.z.
                                    /* 0040 */  0x8C, 0x00, 0xBC, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0048 */  0x72, 0x02, 0x00, 0x00, 0x90, 0x00, 0xA8, 0x02,  // r.......
                                    /* 0050 */  0x6D, 0x01, 0x43, 0x01, 0x97, 0x01, 0xF0, 0x49,  // m.C....I
                                    /* 0058 */  0x02, 0x00, 0x71, 0x02, 0x02, 0x02, 0x00, 0x00,  // ..q.....
                                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  // ........
                                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x07, 0x00,  // ........
                                    /* 0070 */  0x03, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0078 */  0x00, 0x00, 0x01, 0x08, 0x20, 0x03, 0x84, 0x03,  // .... ...
                                    /* 0080 */  0xB6, 0x03, 0xE8, 0x03, 0x1A, 0x04, 0x4C, 0x04,  // ......L.
                                    /* 0088 */  0x7E, 0x04, 0xB0, 0x04, 0x01, 0x01, 0x46, 0x05,  // ~.....F.
                                    /* 0090 */  0x01, 0x01, 0x84, 0x03, 0x00, 0x08, 0x60, 0xEA,  // ......`.
                                    /* 0098 */  0x00, 0x00, 0x00, 0x40, 0x19, 0x01, 0x00, 0x01,  // ...@....
                                    /* 00A0 */  0x80, 0x38, 0x01, 0x00, 0x02, 0xDC, 0x4A, 0x01,  // .8....J.
                                    /* 00A8 */  0x00, 0x03, 0x90, 0x5F, 0x01, 0x00, 0x04, 0x00,  // ..._....
                                    /* 00B0 */  0x77, 0x01, 0x00, 0x05, 0x90, 0x91, 0x01, 0x00,  // w.......
                                    /* 00B8 */  0x06, 0x6C, 0xB0, 0x01, 0x00, 0x07, 0x01, 0x08,  // .l......
                                    /* 00C0 */  0xD0, 0x4C, 0x01, 0x00, 0x00, 0x00, 0x80, 0x00,  // .L......
                                    /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x83, 0x01,  // ........
                                    /* 00D0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 00D8 */  0x00, 0x00, 0x70, 0xA7, 0x01, 0x00, 0x02, 0x00,  // ..p.....
                                    /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88,  // ........
                                    /* 00E8 */  0xBC, 0x01, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x60, 0xE4, 0x01, 0x00,  // ....`...
                                    /* 00F8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0100 */  0x00, 0x44, 0x23, 0x02, 0x00, 0x05, 0x00, 0x00,  // .D#.....
                                    /* 0108 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x58,  // .......X
                                    /* 0110 */  0x02, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x01,  // ........
                                    /* 0118 */  0x00, 0x00, 0x00, 0xB8, 0x7C, 0x02, 0x00, 0x07,  // ....|...
                                    /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0128 */  0x00, 0x05, 0x60, 0xEA, 0x00, 0x00, 0x00, 0x40,  // ..`....@
                                    /* 0130 */  0x19, 0x01, 0x00, 0x00, 0x80, 0x38, 0x01, 0x00,  // .....8..
                                    /* 0138 */  0x00, 0xDC, 0x4A, 0x01, 0x00, 0x00, 0x90, 0x5F,  // ..J...._
                                    /* 0140 */  0x01, 0x00, 0x00, 0x00, 0x08, 0x28, 0x6E, 0x00,  // .....(n.
                                    /* 0148 */  0x00, 0x00, 0x2C, 0xC9, 0x00, 0x00, 0x01, 0xF8,  // ..,.....
                                    /* 0150 */  0x0B, 0x01, 0x00, 0x02, 0x80, 0x38, 0x01, 0x00,  // .....8..
                                    /* 0158 */  0x03, 0x90, 0x5F, 0x01, 0x00, 0x04, 0xF4, 0x91,  // .._.....
                                    /* 0160 */  0x01, 0x00, 0x05, 0xD0, 0xB0, 0x01, 0x00, 0x06,  // ........
                                    /* 0168 */  0xC0, 0xD4, 0x01, 0x00, 0x07, 0x00, 0x08, 0x6C,  // .......l
                                    /* 0170 */  0x39, 0x00, 0x00, 0x00, 0x24, 0x5E, 0x00, 0x00,  // 9...$^..
                                    /* 0178 */  0x01, 0xFC, 0x85, 0x00, 0x00, 0x02, 0xAC, 0xBC,  // ........
                                    /* 0180 */  0x00, 0x00, 0x03, 0x34, 0xD0, 0x00, 0x00, 0x04,  // ...4....
                                    /* 0188 */  0x68, 0x6E, 0x01, 0x00, 0x05, 0x08, 0x97, 0x01,  // hn......
                                    /* 0190 */  0x00, 0x06, 0xEC, 0xA3, 0x01, 0x00, 0x07, 0x00,  // ........
                                    /* 0198 */  0x01, 0x68, 0x3C, 0x01, 0x00, 0x00, 0x01, 0x04,  // .h<.....
                                    /* 01A0 */  0x3C, 0x41, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50,  // <A.....P
                                    /* 01A8 */  0xC3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x38,  // .......8
                                    /* 01B0 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x24, 0x71, 0x01,  // .....$q.
                                    /* 01B8 */  0x00, 0x04, 0x00, 0x00, 0x01, 0x08, 0x00, 0x98,  // ........
                                    /* 01C0 */  0x85, 0x00, 0x00, 0x40, 0xB5, 0x00, 0x00, 0x60,  // ...@...`
                                    /* 01C8 */  0xEA, 0x00, 0x00, 0x50, 0xC3, 0x00, 0x00, 0x01,  // ...P....
                                    /* 01D0 */  0x80, 0xBB, 0x00, 0x00, 0x60, 0xEA, 0x00, 0x00,  // ....`...
                                    /* 01D8 */  0x94, 0x0B, 0x01, 0x00, 0x50, 0xC3, 0x00, 0x00,  // ....P...
                                    /* 01E0 */  0x02, 0x00, 0xE1, 0x00, 0x00, 0x94, 0x0B, 0x01,  // ........
                                    /* 01E8 */  0x00, 0x40, 0x19, 0x01, 0x00, 0x50, 0xC3, 0x00,  // .@...P..
                                    /* 01F0 */  0x00, 0x03, 0x78, 0xFF, 0x00, 0x00, 0x40, 0x19,  // ..x...@.
                                    /* 01F8 */  0x01, 0x00, 0x88, 0x26, 0x01, 0x00, 0x50, 0xC3,  // ...&..P.
                                    /* 0200 */  0x00, 0x00, 0x04, 0x40, 0x19, 0x01, 0x00, 0x80,  // ...@....
                                    /* 0208 */  0x38, 0x01, 0x00, 0x80, 0x38, 0x01, 0x00, 0x50,  // 8...8..P
                                    /* 0210 */  0xC3, 0x00, 0x00, 0x05, 0x80, 0x38, 0x01, 0x00,  // .....8..
                                    /* 0218 */  0xDC, 0x4A, 0x01, 0x00, 0xDC, 0x4A, 0x01, 0x00,  // .J...J..
                                    /* 0220 */  0x50, 0xC3, 0x00, 0x00, 0x06, 0x00, 0x77, 0x01,  // P.....w.
                                    /* 0228 */  0x00, 0x00, 0x77, 0x01, 0x00, 0x90, 0x5F, 0x01,  // ..w..._.
                                    /* 0230 */  0x00, 0x50, 0xC3, 0x00, 0x00, 0x07, 0x90, 0x91,  // .P......
                                    /* 0238 */  0x01, 0x00, 0x90, 0x91, 0x01, 0x00, 0x00, 0x77,  // .......w
                                    /* 0240 */  0x01, 0x00, 0x50, 0xC3, 0x00, 0x00, 0x01, 0x18,  // ..P.....
                                    /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,  // ........
                                    /* 0250 */  0x14, 0x13, 0xDC, 0x05, 0x60, 0x09, 0x44, 0x00,  // ....`.D.
                                    /* 0258 */  0x0A, 0x00, 0x54, 0x03, 0x90, 0x01, 0x90, 0x01,  // ..T.....
                                    /* 0260 */  0x90, 0x01, 0x90, 0x01, 0x90, 0x01, 0x90, 0x01,  // ........
                                    /* 0268 */  0x90, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                                    /* 0270 */  0x06, 0x31, 0x07, 0xDC, 0x00, 0xDC, 0x00, 0xDC,  // .1......
                                    /* 0278 */  0x00, 0x2C, 0x01, 0x00, 0x00, 0x59, 0x00, 0x69,  // .,...Y.i
                                    /* 0280 */  0x00, 0x4A, 0x00, 0x4A, 0x00, 0x5F, 0x00, 0x73,  // .J.J._.s
                                    /* 0288 */  0x00, 0x73, 0x00, 0x64, 0x00, 0x40, 0x00, 0x90,  // .s.d.@..
                                    /* 0290 */  0x92, 0x97, 0x60, 0x96, 0x00, 0x90, 0x55, 0x00,  // ..`...U.
                                    /* 0298 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 02A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 02A8 */  0x02, 0x02, 0xD4, 0x30, 0x00, 0x00, 0x02, 0x10,  // ...0....
                                    /* 02B0 */  0x60, 0xEA, 0x00, 0x00, 0x02, 0x10               // `.....
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
                                    "Radeon RX Vega 64 8GB HD-Audio"
                                }, 

                                "model", 
                                Buffer (0x1F)
                                {
                                    "Radeon RX Vega 64 8GB HD-Audio"
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

