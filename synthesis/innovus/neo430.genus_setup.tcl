#####################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1
#   on 03/02/2023 20:10:45
#
# This file can only be run in Genus Common UI mode.
#
#####################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version GENUS15.22 - 15.20-s024_1


# Remove Existing Design
###########################################################
if {[::legacy::find -design design:neo430_top] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj design:neo430_top
}


# Source INIT Setup file
########################################################
source innovus/neo430.genus_init.tcl
read_metric -id current innovus/neo430.metrics.json

source innovus/neo430.g
puts "\n** Restoration Completed **\n"


# Data Integrity Check
###########################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "{GENUS15.22 - 15.20-s024_1}"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: {GENUS15.22 - 15.20-s024_1}  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack design:neo430_top]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "0.0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: 0.0,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
# tns
set _tns_ [::legacy::get_attribute tns design:neo430_top]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area design:neo430_top]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "3797803"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 3797803,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area design:neo430_top]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "1252677"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 1252677,  current net area: $_net_area_"
}
unset _net_area_
