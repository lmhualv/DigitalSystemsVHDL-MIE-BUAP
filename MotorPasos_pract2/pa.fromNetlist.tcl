
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name MotorPasos_pract2 -dir "C:/Users/Ing. Luis M. Huesca/Desktop/masters/SisDig/MotorPasos_pract2/planAhead_run_3" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Ing. Luis M. Huesca/Desktop/masters/SisDig/MotorPasos_pract2/top_motor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ing. Luis M. Huesca/Desktop/masters/SisDig/MotorPasos_pract2} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "spartan3e.ucf" [current_fileset -constrset]
add_files [list {spartan3e.ucf}] -fileset [get_property constrset [current_run]]
link_design
