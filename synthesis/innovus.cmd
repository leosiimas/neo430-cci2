#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Mar  7 11:49:58 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v16.17-s018_1 (64bit) 08/31/2017 09:57 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 16.17-s018_1 NR170729-1044/16_17-UB (database version 2.30, 373.6.1) {superthreading v1.33}
#@(#)CDS: AAE 16.17-s002 (64bit) 08/31/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 16.17-s002_1 () May 30 2017 04:32:42 ( )
#@(#)CDS: SYNTECH 16.15-s004_1 () Jan 10 2017 07:20:10 ( )
#@(#)CDS: CPE v16.17-s005
#@(#)CDS: IQRC/TQRC 15.2.6-s621 (64bit) Thu Oct 27 23:06:47 PDT 2016 (Linux 2.6.18-194.el5)

eval_legacy {source pinPlacement_021.inn}
opt_design -pre_cts
eval_legacy {saveDesign prects_01.inn}
eval_legacy {setCTSMode -engine ck}
eval_legacy {clockDesign -specFile  Clock.ctstch -outDir clk_report}
gui_select -point {2468.430 2281.797}
gui_select -point {2468.430 2281.797}
gui_pan_page -1 0
gui_pan_page -1 0
gui_pan_page 0 -1
gui_pan_page 0 -1
gui_select -point {-735.420 1571.585}
gui_select -point {-735.420 1571.585}
gui_pan_page 0 -1
gui_pan_page 0 -1
gui_pan_page 0 1
gui_pan_page 0 1
gui_pan_page 0 1
gui_pan_page 0 1
gui_pan_page 0 -1
gui_pan_page 0 -1
gui_pan_page 0 1
gui_pan_page 0 1
set_layer_preference term -is_visible 0
set_layer_preference violation -is_visible 0
set_layer_preference busguide -is_visible 0
set_layer_preference aggress -is_visible 0
set_layer_preference text -is_visible 0
set_layer_preference pinText -is_visible 0
set_layer_preference flightLine -is_visible 0
set_layer_preference portNum -is_visible 0
set_layer_preference dpt -is_visible 0
set_layer_preference term -is_visible 1
set_layer_preference violation -is_visible 1
set_layer_preference busguide -is_visible 1
set_layer_preference aggress -is_visible 1
set_layer_preference text -is_visible 1
set_layer_preference pinText -is_visible 1
set_layer_preference flightLine -is_visible 1
set_layer_preference portNum -is_visible 1
set_layer_preference dpt -is_visible 1
gui_select -point {-0.310 0.002}
gui_select -point {-0.310 0.002}
gui_select -point {-0.331 -0.111}
gui_select -point {-0.331 -0.111}
gui_select -point {-0.316 -0.024}
gui_select -point {-0.316 -0.024}
gui_select -point {-0.306 -0.124}
gui_select -point {-0.306 -0.124}
gui_select -point {-0.295 0.120}
gui_select -point {-0.295 0.120}
gui_pan_center 202.488 171.866
gui_pan_center 202.488 171.866
gui_pan_center 538.453 291.689
gui_pan_center 538.453 291.689
opt_design -post_cts
eval_legacy {saveDesign poscts_01.inn}
gui_select -point {2543.143 1537.540}
gui_select -point {2543.143 1537.540}
report_timing
route_design -global
route_detail
