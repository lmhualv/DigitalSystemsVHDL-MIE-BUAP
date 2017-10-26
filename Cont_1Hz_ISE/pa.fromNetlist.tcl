
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Cont_1Hz_ISE -dir "C:/SisDig/Cont_1Hz_ISE/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/SisDig/Cont_1Hz_ISE/timer1seg.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/SisDig/Cont_1Hz_ISE} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "timer1seg.ucf" [current_fileset -constrset]
add_files [list {timer1seg.ucf}] -fileset [get_property constrset [current_run]]
link_design
