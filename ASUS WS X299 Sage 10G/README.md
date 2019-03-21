## ASUS WS X299 Sage 10G SSDTs 

Collection of X299 System `SSDTs` for the ASUS WS X299 Sage 10G.

 AML File | Description |
| :------- | :---------- |
| `SSDT-X299-HDEF.aml` | On-board Realtek ALC S1220 HD Audio controller HDEF PCI implementation |
| `SSDT-X299-ANS.aml` | On-board NVME controller ANS1 PCI implementation |
| `SSDT-X299-PMCR.aml` | On-board PMC controller PCI implementation |
| `SSDT-X299-SAT1.aml` | On-board AHCI SATA controller PCI implementation |
| `SSDT-X299-THSS.aml` | On-board Thermal controller PCI implementation |
| `SSDT-X299-USBX.aml` | Fixes USB Power Errors during system boot |
| `SSDT-X299-XHCI.aml` | On-board ASM1074 USB3.0 extensible Host Controller XHCI PCI implementation |
| `SSDT-X299-XHC.aml` | On-board ASN3142#1, ASN3142#2 USB3.1 extensible Host Controller XHC1, XHC2 implementation |
| `SSDT-X299-ETH.aml` | On-board 2x Intel X550-AT2 10GB NIC controlller PCI implementation |
| `SSDT-X299-TB3HP.aml` | GC-Titan Ridge/GC-Alpine Ridge/ASUS TBEX 3 TB3/USB-C Hotplug Injector Slot-2 PCI implementation |
| `SSDT-X299-Slot5-PC01-BR1A-SL01-Vega64.aml` | AMD Radeon RX Vega 64 PCIe Slot-5 GFX0 and HDAU PCI implementation |
| `SSDT-X299-Slot1-Slot3-PC02-BR2A-SL05-ANS-ARPT.aml` |  Slot-1 ANS1 NVME controller and Slot-3 ARPT OSXWIFI Broadcom BCM94360CD BT/WIFI PCIe Adapter PCI implementation |
| `SSDT-DTPG.aml` | DTPG PCI implementation (required for all `SSDTs` listed above) |

Note that any devices in respective PCIe slots on the ASUS WS X299 Sage 10G sharing the same PCI device at different PCI bridges, like PC02.BR2A.SL05 in case of the ANS1 NVME controller in Slot-1 (PCI bridge @10) and in case of the ARPT OSXWIFI Broadcom BCM94360CD BT/WIFI PCIe Adapter in Slot-3 (PCI bridge @08), need to be implemented in the same system SSDT, like in case of  | `SSDT-X299-Slot1-Slot3-PC02-BR2A-SL05-ANS-ARPT.aml` |.

## Required Patches

The `SSDTs` above require the following `config.plist` ACPI DSDT patch replacements.

| Comment | Find [HEX] | Replace [Hex] |
| :------ | :--------- | :----------- |
| `PC00` &rarr; `PCI0` | `50433030` | `50434930` |
| `_OSI` &rarr; `XOSI` | `5F4F5349` | `584F5349` |
| `EC0_` &rarr; `EC__` | `4543305F` | `45435F5F` |
| `H_EC` &rarr; `EC__` | `485F4543` | `45435F5F` |
| `HEC1` &rarr; `IMEI` | `48454331` | `494D4549` |
| `IDER` &rarr; `MEID` | `49444552` | `4D454944` |
| `LPC0` &rarr; `LPCB` | `4C504330` | `4C504342` |
| `FPU_` &rarr; `MATH` | `4650555F` | `4D415448` |
| `TMR_` &rarr; `TIMR` | `544D525F` | `54494D52` |
| `PIC_` &rarr; `IPIC` | `5049435F` | `49504943` |
| `_DSM` &rarr; `XDSM` | `5F44534D` | `5844534D` |
| `SMBS._ADR` &rarr; `XSBU.XADR` | `534D4253 085F4144 52` | `58534255 08584144 52` |
