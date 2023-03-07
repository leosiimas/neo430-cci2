#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 03/02/2023 20:10:45
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source innovus/neo430.flowkit_settings.tcl

source innovus/neo430.invs_init.tcl

# Reading metrics file
######################
read_metric -id current innovus/neo430.metrics.json 



# Mode Setup
###########################################################
source innovus/neo430.mode

# Import list of instances with subdesigns having boundary optimization disabled
################################################################################
set_db opt_keep_ports innovus/neo430.boundary_opto.tcl 

