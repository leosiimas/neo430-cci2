#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 02/22/2023 12:55:24
#
#####################################################################


read_mmmc innovus/neo430.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_5V.lef}

read_netlist innovus/neo430.v

init_design
