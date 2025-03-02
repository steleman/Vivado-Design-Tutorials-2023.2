#
# Copyright (C) 2023, Advanced Micro Devices, Inc. All rights reserved.
# SPDX-License-Identifier: X11
#

#Source this script to compile the full Versal DFX tutorial design in Vivado 2023.2
#Source individual steps to work more interactively with the tools / flow

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project -force rclk_sharing ../vivado_prj -part xcvc1902-vsva2197-2MP-e-S
   set_property BOARD_PART xilinx.com:vck190:part0:2.2 [current_project]
}


#Create the flat deisgn using IPI
source create_top_bd.tcl


#Create the BDC for RP1 and RP2 hierarchy
source create_rp1_rp2_bdc.tcl


#Enable DFX for the RP1 BDC and RP2 BDC
source enable_dfx_bdc.tcl

#Set the Aperture for individual RP BDCs
source match_aperture.tcl

#Create an HDL Wrapper, set up the DFX Wizard, then run the implementation flow through programming image generation and XSA export
source run_impl.tcl

