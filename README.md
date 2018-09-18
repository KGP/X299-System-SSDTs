# X299-System-SSDTs
Collection of X299 System SSDTs for the ASUS Prime X299 Deluxe

SSDT-X299-HDEF.aml: Realtek ALC S1220 HD Audio onboard controller HDEF PCI implementation 
SSDT-X299-ANS.aml: onboard NVME controller ANS1 and ANS2 PCI implementation
SSDT-X299-PMC1.aml: onbaord PMC controller PCI implementation
SSDT-X299-SAT1.aml: onbaord AHCI SATA controller PCI implementation
SSDT-X299-THSS.aml: onbaord Thermal controller PCI implementation
SSDT-X299-USB.aml: onbaord ASM1074, ASN3142#1, ASN3142#2 and ASN3142#3 XHC USB3.0 and USB3.1 extensible Host Controller PCI implementation 
SSDT-X299-ETH.aml: Intel I219V2 and I211VA 1GB NIC onabord controlller PCI implementation 
SSDT-X299-Vega.aml: RX Radeon Vega 64 PCIe Slot-1 GFX0 and HDAU PCI implementation
SSDT-X299-Nvidia.aml: Nvidia PCIe Slot-1 GFX0 and HDAU PCI implementation
SSDT-X299-ARPT.aml: OSXWIFI Broadcom BCM94360CD BT/WIFI PCIe Slot-3 ARPT PCI implementation
SSDT-X299-TB3HP.aml: Alpine Ridge/TBEX 3 TB3/TB-XHC-USB Slot-4 Hotplug Injector PCI implementation 
SSDT-X299-ACQU.aml: Acquantia AQC107-AFW 10GB NIC PCIe Slot-6 XGBE PCI implementation
SSDT-X299-X540-T1.aml: Intel X540-T1 10GB NIC PCIe Slot-6 XGBE PCI implementation
SSDT-X299-P2EI0G-2T.aml: Smal-Tree P2EI0G-2T 10GB NIC PCIe Slot-6 XGBE and XGBF PCI implementations
SSDT-DTPG.aml: DTPG PCI implementation (required for all SSDTs listed above)

Set of X299-SSDTS requires the following config.plist ACPI DSDT patch replacements:

Comment:       Find*[HEX]    Replace[Hex]
PC00 -> PCI0   50433030      50434930
_OSI -> XOSI   5F4F5349      584F5349
EC0_ -> EC__   4543305F      45435F5F
H_EC -> EC__   485F4543      45435F5F
HEC1 -> IMEI   48454331      494D4549
IDER->MEID     49444552      4D454944
LPC0 -> LPCB   4C504330      4C504342
FPU_ -> MATH   4650555F      4D415448
TMR_ -> TIMR   544D525F      54494D52
PIC_ -> IPIC   5049435F      49504943
_DSM -> XDSM   5F44534D      5844534D
SMBS._ADR -> XSBU.XADR   534D4253 085F4144 52      58534255 08584144 52
