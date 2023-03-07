// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1
tclmode
set env(RC_VERSION) "GENUS15.22 - 15.20-s024_1"
vpxmode
set dofile abort exit
usage -auto -elapse
set log file logs_Mar02-19:02:17/intermediate2final.lec.log -replace
tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
vpxmode
tclmode
set env(CDN_SYNTH_ROOT) /tools/cadence/rhel5/GENUS_15.22/tools.lnx86
set CDN_SYNTH_ROOT /tools/cadence/rhel5/GENUS_15.22/tools.lnx86
vpxmode
set undefined cell black_box -noascend -both
set hdl options -VERILOG_INCLUDE_DIR "incdir:sep:src:cwd"

add search path -library . ./lib /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS5ST /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE 
read library -statetable -liberty -both  \
	/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
	/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS5ST/IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C.lib

tclmode
if {$ver < 13.10} {
vpx read design -verilog -golden -lastmod -noelab \
	outputs_Mar02-19:02:17/neo430_top_intermediate.v
} else {
vpx read design -verilog95 -golden -lastmod -noelab \
	outputs_Mar02-19:02:17/neo430_top_intermediate.v
}
vpxmode

elaborate design -golden -root neo430_top

tclmode
if {$ver < 13.10} {
vpx read design -verilog -revised -lastmod -noelab \
	outputs_Mar02-19:02:17/neo430_top_m.v
} else {
vpx read design -verilog95 -revised -lastmod -noelab \
	outputs_Mar02-19:02:17/neo430_top_m.v
}
vpxmode

elaborate design -revised -root neo430_top

tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver < 13.10} {
vpx substitute blackbox model -golden
}
vpxmode
report design data
report black box

uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
set parallel option -threads 4 -license xl -norelease_license
set flatten model -gated_clock
set analyze option -auto

set system mode lec
// report mapped points
report unmapped points -summary
report unmapped points -extra -unreachable -notmapped
add compared points -all
// report compared points
compare
usage
// report compare data
report compare data -class nonequivalent -class abort -class notcompared
report verification -verbose
report statistics
tclmode
puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -NONequivalent -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -NONequivalent -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -NONequivalent] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}
vpxmode
exit -force
