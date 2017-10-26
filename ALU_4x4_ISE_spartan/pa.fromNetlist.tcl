
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ALU_4x4_ISE -dir "C:/SisDig/ALU_4x4_ISE_spartan/planAhead_run_4" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/SisDig/ALU_4x4_ISE_spartan/ALU_4x4.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/SisDig/ALU_4x4_ISE_spartan} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ALU_4x4.ucf" [current_fileset -constrset]
add_files [list {ALU_4x4.ucf}] -fileset [get_property constrset [current_run]]
link_design
