# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.runs/synth_1/.Xil/Vivado-15560-LAPTOP-5JLFSJ68/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/imports/Desktop {
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/IO.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/adder.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/alu.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/aludec.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/controller.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/imports/Desktop/dMemoryDecoder.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/datapath.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/dmem.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/flopr.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/imem.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/maindec.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/mips.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/mux2.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/mux7seg.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/regfile.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/s12.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/signext.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/unsignext.sv
      D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.srcs/sources_1/new/Top.sv
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top Top
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "D:/Subjects/计算机组成与体系结构/实验项目/实验一_单周期MIPS处理器/SingleCycleProcessor/SingleCycleProcessor.runs/synth_1/.Xil/Vivado-15560-LAPTOP-5JLFSJ68/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
