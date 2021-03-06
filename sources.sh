#!/bin/bash
#


#define these here for easy updating
script_date="[2016-10-20]"

#where the stuff is
util_source="https://www.mrchromebox.tech/files/util/"
rwlegacy_source="https://www.mrchromebox.tech/files/firmware/rw_legacy/"
bootstub_source="https://www.mrchromebox.tech/files/firmware/boot_stub/"
fullrom_source="https://www.mrchromebox.tech/files/firmware/full_rom/"
fullrom_source_coolstar="https://dl.dropboxusercontent.com/u/59964215/chromebook/ROM/"
shellball_source="https://www.mrchromebox.tech/files/firmware/shellball/"
cbfs_source="https://www.mrchromebox.tech/files/firmware/cbfs/"

#LE sources
LE_url_official="http://releases.libreelec.tv/"
LE_url=${LE_url_official}
chrx_url="https://chrx.org/go"

#LE version
LE_version_base="LibreELEC-Generic.x86_64"
LE_version_stable="7.0.2"
LE_version_latest="7.90.007"

#syslinux version
syslinux_version="syslinux-6.04-pre1"

#SBIB full ROMs - Legacy
coreboot_stumpy="coreboot_seabios-stumpy-mrchromebox_20161015.rom"
coreboot_parrot="coreboot_seabios-parrot_snb-mrchromebox_20161020.rom"
coreboot_parrot_ivb="coreboot_seabios-parrot_ivb-mrchromebox_20161015.rom"
#SBIB full ROMs - UEFI
coreboot_uefi_parrot="coreboot_seabios_duet-parrot_snb-mrchromebox_20161020.rom"
coreboot_uefi_parrot_ivb="coreboot_seabios_duet-parrot_ivb-mrchromebox_20161015.rom"

#Haswell full ROMs - Legacy
coreboot_falco="coreboot_seabios-falco-mrchromebox_20161015.rom"
coreboot_leon="coreboot_seabios-leon-mrchromebox_20161015.rom"
coreboot_hsw_box="coreboot_seabios-panther-mrchromebox_20161015.rom"
coreboot_peppy="coreboot_seabios-peppy-mrchromebox_20161015.rom"
coreboot_peppy_elan="coreboot_seabios-peppy_elan-mrchromebox_20161015.rom"
coreboot_wolf="coreboot_seabios-wolf-mrchromebox_20161015.rom"
#Haswell full ROMs - UEFI
coreboot_uefi_falco="coreboot_seabios_duet-falco-mrchromebox_20161015.rom"
coreboot_uefi_leon="coreboot_seabios_duet-leon-mrchromebox_20161015.rom"
coreboot_uefi_hsw_box="coreboot_seabios_duet-panther-mrchromebox_20161015.rom"
coreboot_uefi_peppy="coreboot_seabios_duet-peppy-mrchromebox_20161015.rom"
coreboot_uefi_peppy_elan="coreboot_seabios_duet-peppy_elan-mrchromebox_20161015.rom"
coreboot_uefi_wolf="coreboot_seabios_duet-wolf-mrchromebox_20161015.rom"

#Broadwell full ROMs - Legacy
coreboot_auron_paine="coreboot_seabios-auron_paine-mrchromebox_20161015.rom"
coreboot_auron_yuna="coreboot_seabios-auron_yuna-mrchromebox_20161015.rom"
coreboot_gandof="coreboot_seabios-gandof-mrchromebox_20161015.rom"
coreboot_guado="coreboot_seabios-guado-mrchromebox_20161015.rom"
coreboot_lulu="coreboot_seabios-lulu-mrchromebox_20161015.rom"
coreboot_rikku="coreboot_seabios-rikku-mrchromebox_20161015.rom"
coreboot_samus="coreboot_seabios-samus-mrchromebox_20161015.rom"
coreboot_tidus="coreboot_seabios-tidus-mrchromebox_20161015.rom"
#Broadwell full ROMs - UEFI
coreboot_uefi_auron_paine="coreboot_seabios_duet-auron_paine-mrchromebox_20161015.rom"
coreboot_uefi_auron_yuna="coreboot_seabios_duet-auron_yuna-mrchromebox_20161015.rom"
coreboot_uefi_auron=${coreboot_uefi_auron_paine}
coreboot_uefi_gandof="coreboot_seabios_duet-gandof-mrchromebox_20161015.rom"
coreboot_uefi_guado="coreboot_seabios_duet-guado-mrchromebox_20161015.rom"
coreboot_uefi_lulu="coreboot_seabios_duet-lulu-mrchromebox_20161015.rom"
coreboot_uefi_rikku="coreboot_seabios_duet-rikku-mrchromebox_20161015.rom"
coreboot_uefi_samus="coreboot_seabios_duet-samus-mrchromebox_20161015.rom"
coreboot_uefi_tidus="coreboot_seabios_duet-tidus-mrchromebox_20161015.rom"

#BayTrail full ROMs - Legacy
coreboot_candy="coreboot_seabios-candy-mrchromebox_20161015.rom"
coreboot_enguarde="coreboot_seabios-enguarde-mrchromebox_20161015.rom"
coreboot_glimmer="coreboot_seabios-glimmer-mrchromebox_20161015.rom"
coreboot_gnawty="coreboot_seabios-gnawty-mrchromebox_20161015.rom"
coreboot_ninja="coreboot_seabios-ninja-mrchromebox_20161015.rom"
coreboot_quawks="coreboot_seabios-quawks-mrchromebox_20161015.rom"
coreboot_swanky="coreboot_seabios-swanky-mrchromebox_20161015.rom"

#RW_LEGACY payloads
seabios_hswbdw_box="seabios-hswbdw_box-mrchromebox_20161015.bin"
seabios_hsw_book="seabios-hsw_book-mrchromebox_20161015.bin"
seabios_bdw_book="seabios-bdw_book-mrchromebox_20161015.bin"
seabios_baytrail="seabios-byt-mrchromebox_20161015.bin"
seabios_braswell="seabios-bsw-mrchromebox_20161015.bin"
seabios_skylake="seabios-skl-mrchromebox_20161015.bin"

#BOOT_STUB payloads
bootstub_payload_baytrail="seabios-byt_bootstub-mrchromebox_20161015.bin"

#hsw/bdw headless VBIOS
hswbdw_headless_vbios="hswbdw_vgabios_1040_cbox_headless.dat"

#PXE ROM for Chromeboxes w/RTL81xx ethernet
pxe_optionrom="10ec8168.rom"
