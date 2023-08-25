!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!--------------------------- Model Specific Colors ----------------------------!
!
!
if condition = (! db_exists(".colors.COLOR_R251G251B255"))
!
color create  &
   color_name = .colors.COLOR_R251G251B255  &
   red_component = 0.9882352941  &
   blue_component = 1.0  &
   green_component = 0.9843137255
!
else 
!
color modify  &
   color_name = .colors.COLOR_R251G251B255  &
   red_component = 0.9882352941  &
   blue_component = 1.0  &
   green_component = 0.9843137255
!
end 
!
if condition = (! db_exists(".colors.COLOR_R203G210B238"))
!
color create  &
   color_name = .colors.COLOR_R203G210B238  &
   red_component = 0.7960784314  &
   blue_component = 0.937254902  &
   green_component = 0.8235294118
!
else 
!
color modify  &
   color_name = .colors.COLOR_R203G210B238  &
   red_component = 0.7960784314  &
   blue_component = 0.937254902  &
   green_component = 0.8235294118
!
end 
!
if condition = (! db_exists(".colors.COLOR_R229G233B236"))
!
color create  &
   color_name = .colors.COLOR_R229G233B236  &
   red_component = 0.8980392157  &
   blue_component = 0.9294117647  &
   green_component = 0.9176470588
!
else 
!
color modify  &
   color_name = .colors.COLOR_R229G233B236  &
   red_component = 0.8980392157  &
   blue_component = 0.9294117647  &
   green_component = 0.9176470588
!
end 
!
if condition = (! db_exists(".colors.COLOR_R165G158B149"))
!
color create  &
   color_name = .colors.COLOR_R165G158B149  &
   red_component = 0.6470588235  &
   blue_component = 0.5882352941  &
   green_component = 0.6196078431
!
else 
!
color modify  &
   color_name = .colors.COLOR_R165G158B149  &
   red_component = 0.6470588235  &
   blue_component = 0.5882352941  &
   green_component = 0.6196078431
!
end 
!
if condition = (! db_exists(".colors.COLOR_R197G192B187"))
!
color create  &
   color_name = .colors.COLOR_R197G192B187  &
   red_component = 0.7764705882  &
   blue_component = 0.737254902  &
   green_component = 0.7568627451
!
else 
!
color modify  &
   color_name = .colors.COLOR_R197G192B187  &
   red_component = 0.7764705882  &
   blue_component = 0.737254902  &
   green_component = 0.7568627451
!
end 
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 5.0E-02  &
   spacing_for_grid = 1.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = Tensegrity
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .Tensegrity.torque_1  &
   adams_id = 163  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.torque_2  &
   adams_id = 164  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.torque_3  &
   adams_id = 165  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.torque_4  &
   adams_id = 166  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.torque_5  &
   adams_id = 167  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.torque_6  &
   adams_id = 168  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .Tensegrity.out_  &
   adams_id = 169  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .Tensegrity.steel  &
   adams_id = 1  &
   density = 7801.0  &
   youngs_modulus = 2.07E+11  &
   poissons_ratio = 0.29
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity.ground.MARKER_2  &
   adams_id = 2  &
   location = -3.1, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
!-------------------------------- groundplane ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity.groundplane  &
   adams_id = 69  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.groundplane
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity.groundplane.MARKER_1  &
   adams_id = 1  &
   location = -10.0, -0.5, -10.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity.groundplane.cm  &
   adams_id = 114  &
   location = 0.0, -0.4, 0.0  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity.groundplane.MARKER_3  &
   adams_id = 3  &
   location = -3.1, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity.groundplane  &
   material_type = .Tensegrity.steel
!
! ****** Graphics for current part ******
!
geometry create shape block  &
   block_name = .Tensegrity.groundplane.BOX_69  &
   adams_id = 69  &
   corner_marker = .Tensegrity.groundplane.MARKER_1  &
   diag_corner_coords = 20.0, 0.2, 20.0
!
part attributes  &
   part_name = .Tensegrity.groundplane  &
   color = Brown  &
   name_visibility = off
!
!------------------------------- _06_bar_bottom -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR1  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR3  &
   adams_id = 9  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR5  &
   adams_id = 16  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR2  &
   adams_id = 18  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR4  &
   adams_id = 20  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.cm  &
   adams_id = 6  &
   location = -9.2295493652E-02, 6.4367616282E-02, -0.1397549215  &
   orientation = 188.2882253687d, 68.2317580296d, 86.3906613952d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_116  &
   adams_id = 116  &
   location = -0.1098013019, 0.1473158618, -9.8674139745E-02  &
   orientation = 180.0d, 157.526266575d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_118  &
   adams_id = 118  &
   location = -8.666646215E-02, 0.1383034563, -8.6169558521E-02  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_142  &
   adams_id = 142  &
   location = -8.0545811461E-02, 0.1593192023, -0.1121058149  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_182  &
   adams_id = 182  &
   location = -9.3877892516E-02, 5.8644300078E-03, -0.1582714698  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_183  &
   adams_id = 183  &
   location = -7.5930406745E-02, 1.0328717225E-02, -0.172657501  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_185  &
   adams_id = 185  &
   location = -9.3877892516E-02, 9.6870285126E-03, -0.1675120185  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_203  &
   adams_id = 203  &
   location = -7.5930406745E-02, 2.6835202155E-03, -0.1541764035  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_255  &
   adams_id = 255  &
   location = -8.3925979417E-02, 2.4379346812E-03, -0.1650998647  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_257  &
   adams_id = 257  &
   location = -8.3925979417E-02, 2.4379346812E-03, -0.1650998647  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom.MARKER_274  &
   adams_id = 274  &
   location = -0.1098013019, 0.1473158618, -9.8674139745E-02  &
   orientation = 180.0d, 157.526266575d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID2.xmt_txt"  &
   part_name = _06_bar_bottom
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID3.xmt_txt"  &
   part_name = _06_bar_bottom
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom.CSG_263  &
   adams_id = 263  &
   base_object = .Tensegrity._06_bar_bottom.SOLID2  &
   object = .Tensegrity._06_bar_bottom.SOLID3  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID9.xmt_txt"  &
   part_name = _06_bar_bottom
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom.CSG_331  &
   adams_id = 331  &
   base_object = .Tensegrity._06_bar_bottom.CSG_263  &
   object = .Tensegrity._06_bar_bottom.SOLID9  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID4.xmt_txt"  &
   part_name = _06_bar_bottom
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom.CSG_399  &
   adams_id = 399  &
   base_object = .Tensegrity._06_bar_bottom.CSG_331  &
   object = .Tensegrity._06_bar_bottom.SOLID4  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID10.xmt_txt"  &
   part_name = _06_bar_bottom
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom.CSG_467  &
   adams_id = 467  &
   base_object = .Tensegrity._06_bar_bottom.CSG_399  &
   object = .Tensegrity._06_bar_bottom.SOLID10  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_SOLID8.xmt_txt"  &
   part_name = _06_bar_bottom
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom.CSG_1786  &
   adams_id = 1786  &
   base_object = .Tensegrity._06_bar_bottom.CSG_467  &
   object = .Tensegrity._06_bar_bottom.SOLID8  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom  &
   color = WHITE
!
!------------------------------ _06_bar_bottom_2 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_2  &
   adams_id = 6  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR3  &
   adams_id = 4  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR1  &
   adams_id = 12  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR2  &
   adams_id = 21  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_2.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_115  &
   adams_id = 115  &
   location = -0.1098013019, 0.1473158618, -9.8674139745E-02  &
   orientation = 180.0d, 157.526266575d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.cm  &
   adams_id = 11  &
   location = -9.3061905299E-02, 0.2402756328, -6.6452149296E-02  &
   orientation = 349.5620990991d, 111.6391977802d, 355.460473247d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_141  &
   adams_id = 141  &
   location = -0.1047680156, 0.1811429741, -0.1030778318  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_160  &
   adams_id = 160  &
   location = -7.5930406745E-02, 0.2965353216, -5.4260534418E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_161  &
   adams_id = 161  &
   location = -7.5930406745E-02, 0.2888901246, -3.5779436976E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_163  &
   adams_id = 163  &
   location = -7.9558800796E-02, 0.2784743469, -4.4416947436E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_165  &
   adams_id = 165  &
   location = -9.3877892516E-02, 0.2895318133, -4.0924919471E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_167  &
   adams_id = 167  &
   location = -9.3877892516E-02, 0.2933544118, -5.0165468192E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_269  &
   adams_id = 269  &
   location = -8.3925979417E-02, 0.2967809071, -4.3337073276E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_271  &
   adams_id = 271  &
   location = -8.3925979417E-02, 0.2967809071, -4.3337073276E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_2.MARKER_273  &
   adams_id = 273  &
   location = -0.1098013019, 0.1473158618, -9.8674139745E-02  &
   orientation = 180.0d, 157.526266575d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_2  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_2_SOLID5.xmt_txt"  &
   part_name = _06_bar_bottom_2
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_2_SOLID6.xmt_txt"  &
   part_name = _06_bar_bottom_2
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_2.CSG_70  &
   adams_id = 70  &
   base_object = .Tensegrity._06_bar_bottom_2.SOLID5  &
   object = .Tensegrity._06_bar_bottom_2.SOLID6  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_2_SOLID11.xmt_txt"  &
   part_name = _06_bar_bottom_2
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_2.CSG_134  &
   adams_id = 134  &
   base_object = .Tensegrity._06_bar_bottom_2.CSG_70  &
   object = .Tensegrity._06_bar_bottom_2.SOLID11  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_2_SOLID1.xmt_txt"  &
   part_name = _06_bar_bottom_2
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_2.CSG_198  &
   adams_id = 198  &
   base_object = .Tensegrity._06_bar_bottom_2.CSG_134  &
   object = .Tensegrity._06_bar_bottom_2.SOLID1  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_2  &
   color = RED
!
!--------------------------------- _03_motor ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor  &
   adams_id = 8  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor.PSMAR  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor.cm  &
   adams_id = 15  &
   location = -8.6651619588E-02, 0.146531534, -0.1055153089  &
   orientation = 179.8792604928d, 156.8769618551d, 93.9265658589d
!
marker create  &
   marker_name = .Tensegrity._03_motor.MARKER_117  &
   adams_id = 117  &
   location = -8.666646215E-02, 0.1383034563, -8.6169558521E-02  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor  &
   color = COLOR_R203G210B238
!
!------------------------------ _06_bar_bottom_3 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_3  &
   adams_id = 14  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR4  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR1  &
   adams_id = 27  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR5  &
   adams_id = 34  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR2  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR3  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_3.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.cm  &
   adams_id = 24  &
   location = 9.2294679583E-02, 6.4180079356E-02, -0.1392854052  &
   orientation = 171.6541919418d, 67.2468039468d, 92.7249954656d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_120  &
   adams_id = 120  &
   location = 0.1098008817, 0.1519052613, -0.1097618545  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_122  &
   adams_id = 122  &
   location = 8.6666041993E-02, 0.1543606513, -0.1249789194  &
   orientation = 179.872459163d, 158.1754763584d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_140  &
   adams_id = 140  &
   location = 8.0545391303E-02, 0.1509117668, -9.1775664004E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_193  &
   adams_id = 193  &
   location = 7.5929986588E-02, 1.033099851E-02, -0.1726565573  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_198  &
   adams_id = 198  &
   location = 7.5929986588E-02, 2.6858014999E-03, -0.1541754598  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_199  &
   adams_id = 199  &
   location = 9.3877472358E-02, 5.8667112922E-03, -0.158270526  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_206  &
   adams_id = 206  &
   location = 7.5929986588E-02, 2.6858014999E-03, -0.1541754598  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_207  &
   adams_id = 207  &
   location = 9.3877472358E-02, 9.689309797E-03, -0.1675110748  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_259  &
   adams_id = 259  &
   location = 8.0544205746E-02, 2.0209481928E-02, -0.163159126  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_261  &
   adams_id = 261  &
   location = 8.3925559259E-02, 2.4402159655E-03, -0.165098921  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_263  &
   adams_id = 263  &
   location = 8.3925559259E-02, 2.4402159655E-03, -0.165098921  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_3.MARKER_284  &
   adams_id = 284  &
   location = 0.1098008817, 0.1519052613, -0.1097618545  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_3  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID13.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID15.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_3.CSG_695  &
   adams_id = 695  &
   base_object = .Tensegrity._06_bar_bottom_3.SOLID13  &
   object = .Tensegrity._06_bar_bottom_3.SOLID15  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID20.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_3.CSG_752  &
   adams_id = 752  &
   base_object = .Tensegrity._06_bar_bottom_3.CSG_695  &
   object = .Tensegrity._06_bar_bottom_3.SOLID20  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID21.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_3.CSG_809  &
   adams_id = 809  &
   base_object = .Tensegrity._06_bar_bottom_3.CSG_752  &
   object = .Tensegrity._06_bar_bottom_3.SOLID21  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID14.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_3.CSG_866  &
   adams_id = 866  &
   base_object = .Tensegrity._06_bar_bottom_3.CSG_809  &
   object = .Tensegrity._06_bar_bottom_3.SOLID14  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_3_SOLID19.xmt_txt"  &
   part_name = _06_bar_bottom_3
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_3.CSG_1854  &
   adams_id = 1854  &
   base_object = .Tensegrity._06_bar_bottom_3.CSG_866  &
   object = .Tensegrity._06_bar_bottom_3.SOLID19  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_3  &
   color = WHITE
!
!------------------------------ _06_bar_bottom_4 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_4  &
   adams_id = 17  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR3  &
   adams_id = 22  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR2  &
   adams_id = 30  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR1  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_4.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_119  &
   adams_id = 119  &
   location = 0.1098008817, 0.1519052613, -0.1097618545  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.cm  &
   adams_id = 29  &
   location = 9.3061342621E-02, 0.2404617398, -6.6893777519E-02  &
   orientation = 10.5126441413d, 112.6326269001d, 3.5001687018d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_139  &
   adams_id = 139  &
   location = 0.1047675954, 0.1727355387, -8.2747680919E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_154  &
   adams_id = 154  &
   location = 7.7377289911E-02, 0.2903190626, -3.9517066063E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_156  &
   adams_id = 156  &
   location = 7.5929986588E-02, 0.2888924059, -3.5778493262E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_157  &
   adams_id = 157  &
   location = 7.5929986588E-02, 0.2965376029, -5.4259590705E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_173  &
   adams_id = 173  &
   location = 9.3877472358E-02, 0.2933566931, -5.0164524478E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_201  &
   adams_id = 201  &
   location = 9.3877472358E-02, 0.2895340946, -4.0923975757E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_265  &
   adams_id = 265  &
   location = 8.3925559259E-02, 0.2967831884, -4.3336129562E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_267  &
   adams_id = 267  &
   location = 8.3925559259E-02, 0.2967831884, -4.3336129562E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_4.MARKER_283  &
   adams_id = 283  &
   location = 0.1098008817, 0.1519052613, -0.1097618545  &
   orientation = 0.0d, 22.473733425d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_4  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_4_SOLID16.xmt_txt"  &
   part_name = _06_bar_bottom_4
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_4_SOLID22.xmt_txt"  &
   part_name = _06_bar_bottom_4
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_4.CSG_535  &
   adams_id = 535  &
   base_object = .Tensegrity._06_bar_bottom_4.SOLID16  &
   object = .Tensegrity._06_bar_bottom_4.SOLID22  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_4_SOLID17.xmt_txt"  &
   part_name = _06_bar_bottom_4
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_4.CSG_588  &
   adams_id = 588  &
   base_object = .Tensegrity._06_bar_bottom_4.CSG_535  &
   object = .Tensegrity._06_bar_bottom_4.SOLID17  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_4_SOLID12.xmt_txt"  &
   part_name = _06_bar_bottom_4
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_4.CSG_641  &
   adams_id = 641  &
   base_object = .Tensegrity._06_bar_bottom_4.CSG_588  &
   object = .Tensegrity._06_bar_bottom_4.SOLID12  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_4  &
   color = BLUE
!
!-------------------------------- _03_motor_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor_2  &
   adams_id = 19  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor_2.PSMAR  &
   adams_id = 32  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor_2.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor_2.cm  &
   adams_id = 33  &
   location = 8.665119943E-02, 0.1465171498, -0.1054740788  &
   orientation = 179.872459163d, 158.1754763584d, 85.843994775d
!
marker create  &
   marker_name = .Tensegrity._03_motor_2.MARKER_121  &
   adams_id = 121  &
   location = 8.6666041993E-02, 0.1543606513, -0.1249789194  &
   orientation = 179.872459163d, 158.1754763584d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_2  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor_2  &
   color = COLOR_R203G210B238
!
!------------------------------ _06_bar_bottom_5 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_5  &
   adams_id = 25  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR4  &
   adams_id = 43  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR2  &
   adams_id = 45  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR5  &
   adams_id = 52  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR1  &
   adams_id = 54  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR3  &
   adams_id = 56  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_5.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.cm  &
   adams_id = 42  &
   location = -9.2350154461E-02, 0.1145621818, -1.8836135917E-02  &
   orientation = 87.5030346899d, 82.7045593293d, 22.1464245683d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_132  &
   adams_id = 132  &
   location = 0.0, 0.1020924624, -5.0496001282E-03  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_134  &
   adams_id = 134  &
   location = -3.5479579038E-03, 9.707515973E-02, -3.2161359237E-02  &
   orientation = 359.2976263016d, 112.4247970058d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_150  &
   adams_id = 150  &
   location = 5.9573550907E-03, 0.1289845947, -2.5584861112E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_164  &
   adams_id = 164  &
   location = -0.154864507, 0.1298248237, -3.0232008177E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_166  &
   adams_id = 166  &
   location = -0.154864507, 0.1298248237, -3.0232008177E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_178  &
   adams_id = 178  &
   location = -0.1534905512, 0.1183439461, -1.555884576E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_179  &
   adams_id = 179  &
   location = -0.1534905512, 0.1091033974, -1.9381444265E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_181  &
   adams_id = 181  &
   location = -0.154864507, 0.1113437263, -3.7877205187E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_247  &
   adams_id = 247  &
   location = -0.1419379834, 0.1136529564, -3.2995330584E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_249  &
   adams_id = 249  &
   location = -0.1419379834, 0.1136529564, -3.2995330584E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_251  &
   adams_id = 251  &
   location = -0.1592670421, 0.1175278886, -2.6666258799E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_253  &
   adams_id = 253  &
   location = -0.1592670421, 0.1175278886, -2.6666258799E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_5.MARKER_276  &
   adams_id = 276  &
   location = 0.0, 0.1020924624, -5.0496001282E-03  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_5  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID24.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID31.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_5.CSG_1050  &
   adams_id = 1050  &
   base_object = .Tensegrity._06_bar_bottom_5.SOLID24  &
   object = .Tensegrity._06_bar_bottom_5.SOLID31  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID26.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_5.CSG_1096  &
   adams_id = 1096  &
   base_object = .Tensegrity._06_bar_bottom_5.CSG_1050  &
   object = .Tensegrity._06_bar_bottom_5.SOLID26  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID32.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_5.CSG_1142  &
   adams_id = 1142  &
   base_object = .Tensegrity._06_bar_bottom_5.CSG_1096  &
   object = .Tensegrity._06_bar_bottom_5.SOLID32  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID25.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_5.CSG_1188  &
   adams_id = 1188  &
   base_object = .Tensegrity._06_bar_bottom_5.CSG_1142  &
   object = .Tensegrity._06_bar_bottom_5.SOLID25  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_5_SOLID30.xmt_txt"  &
   part_name = _06_bar_bottom_5
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_5.CSG_1705  &
   adams_id = 1705  &
   base_object = .Tensegrity._06_bar_bottom_5.CSG_1188  &
   object = .Tensegrity._06_bar_bottom_5.SOLID30  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_5  &
   color = WHITE
!
!------------------------------ _06_bar_bottom_6 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_6  &
   adams_id = 28  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR3  &
   adams_id = 40  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR  &
   adams_id = 46  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR1  &
   adams_id = 48  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR2  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_6.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.cm  &
   adams_id = 47  &
   location = 9.8218196823E-02, 0.1138146877, -1.8316029584E-02  &
   orientation = 274.2014039239d, 81.2402560995d, 66.6710812499d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_131  &
   adams_id = 131  &
   location = 0.0, 0.1020924624, -5.0496001282E-03  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_149  &
   adams_id = 149  &
   location = 2.9574753238E-02, 0.1197254185, -3.2022153923E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_176  &
   adams_id = 176  &
   location = 0.1534905512, 0.1183439461, -1.555884576E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_195  &
   adams_id = 195  &
   location = 0.1534905512, 0.1091033974, -1.9381444265E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_200  &
   adams_id = 200  &
   location = 0.154864507, 0.1113437263, -3.7877205187E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_202  &
   adams_id = 202  &
   location = 0.154864507, 0.1298248237, -3.0232008177E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_231  &
   adams_id = 231  &
   location = 0.1592670421, 0.1175278886, -2.6666258799E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_233  &
   adams_id = 233  &
   location = 0.1592670421, 0.1175278886, -2.6666258799E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_6.MARKER_275  &
   adams_id = 275  &
   location = 0.0, 0.1020924624, -5.0496001282E-03  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_6  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_6_SOLID27.xmt_txt"  &
   part_name = _06_bar_bottom_6
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_6_SOLID28.xmt_txt"  &
   part_name = _06_bar_bottom_6
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_6.CSG_923  &
   adams_id = 923  &
   base_object = .Tensegrity._06_bar_bottom_6.SOLID27  &
   object = .Tensegrity._06_bar_bottom_6.SOLID28  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_6_SOLID33.xmt_txt"  &
   part_name = _06_bar_bottom_6
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_6.CSG_965  &
   adams_id = 965  &
   base_object = .Tensegrity._06_bar_bottom_6.CSG_923  &
   object = .Tensegrity._06_bar_bottom_6.SOLID33  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_6_SOLID23.xmt_txt"  &
   part_name = _06_bar_bottom_6
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_6.CSG_1007  &
   adams_id = 1007  &
   base_object = .Tensegrity._06_bar_bottom_6.CSG_965  &
   object = .Tensegrity._06_bar_bottom_6.SOLID23  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_6  &
   color = Orange2
!
!-------------------------------- _03_motor_3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor_3  &
   adams_id = 30  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor_3.PSMAR  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor_3.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor_3.cm  &
   adams_id = 51  &
   location = -3.3398662172E-03, 0.1165061289, -2.4139284954E-02  &
   orientation = 359.2976263016d, 112.4247970058d, 355.6939107629d
!
marker create  &
   marker_name = .Tensegrity._03_motor_3.MARKER_133  &
   adams_id = 133  &
   location = -3.5479579038E-03, 9.707515973E-02, -3.2161359237E-02  &
   orientation = 359.2976263016d, 112.4247970058d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_3  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor_3  &
   color = COLOR_R203G210B238
!
!------------------------------ _06_bar_bottom_7 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_7  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR  &
   adams_id = 59  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR4  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR1  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR5  &
   adams_id = 70  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR2  &
   adams_id = 72  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR3  &
   adams_id = 74  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_7.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.cm  &
   adams_id = 60  &
   location = -9.234780121E-02, 0.1846564714, -0.1896004056  &
   orientation = 92.4969901033d, 97.2954336822d, 22.1464423857d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_136  &
   adams_id = 136  &
   location = 2.4687762294E-06, 0.1971262188, -0.2033869496  &
   orientation = 0.0d, 112.473733425d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_138  &
   adams_id = 138  &
   location = -3.5454891279E-03, 0.2021435215, -0.1762751905  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_152  &
   adams_id = 152  &
   location = 5.9598238666E-03, 0.1702340866, -0.1828516886  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_168  &
   adams_id = 168  &
   location = -0.1548620382, 0.1878749549, -0.1705593445  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_170  &
   adams_id = 170  &
   location = -0.1534880824, 0.1901152838, -0.1890551054  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_186  &
   adams_id = 186  &
   location = -0.1548620382, 0.1693938575, -0.1782045415  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_187  &
   adams_id = 187  &
   location = -0.1534880824, 0.1808747351, -0.1928777039  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_189  &
   adams_id = 189  &
   location = -0.1534880824, 0.1808747351, -0.1928777039  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_243  &
   adams_id = 243  &
   location = -0.1592645733, 0.1816907926, -0.1817702909  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_245  &
   adams_id = 245  &
   location = -0.1592645733, 0.1816907926, -0.1817702909  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_7.MARKER_280  &
   adams_id = 280  &
   location = 2.4687762294E-06, 0.1915818895, -0.2056805087  &
   orientation = 0.0d, 112.473733425d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_7  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID35.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID37.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_7.CSG_1328  &
   adams_id = 1328  &
   base_object = .Tensegrity._06_bar_bottom_7.SOLID35  &
   object = .Tensegrity._06_bar_bottom_7.SOLID37  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID42.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_7.CSG_1363  &
   adams_id = 1363  &
   base_object = .Tensegrity._06_bar_bottom_7.CSG_1328  &
   object = .Tensegrity._06_bar_bottom_7.SOLID42  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID43.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_7.CSG_1398  &
   adams_id = 1398  &
   base_object = .Tensegrity._06_bar_bottom_7.CSG_1363  &
   object = .Tensegrity._06_bar_bottom_7.SOLID43  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID36.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_7.CSG_1433  &
   adams_id = 1433  &
   base_object = .Tensegrity._06_bar_bottom_7.CSG_1398  &
   object = .Tensegrity._06_bar_bottom_7.SOLID36  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_7_SOLID41.xmt_txt"  &
   part_name = _06_bar_bottom_7
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_7.CSG_1751  &
   adams_id = 1751  &
   base_object = .Tensegrity._06_bar_bottom_7.CSG_1433  &
   object = .Tensegrity._06_bar_bottom_7.SOLID41  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_7  &
   color = WHITE
!
!------------------------------ _06_bar_bottom_8 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_8  &
   adams_id = 39  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR3  &
   adams_id = 58  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR  &
   adams_id = 64  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR1  &
   adams_id = 66  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR2  &
   adams_id = 75  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_8.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.cm  &
   adams_id = 65  &
   location = 9.8220601468E-02, 0.1854039851, -0.1901205357  &
   orientation = 265.7985822061d, 98.7597371316d, 66.6704030112d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_135  &
   adams_id = 135  &
   location = 2.4687762294E-06, 0.1971262188, -0.2033869496  &
   orientation = 0.0d, 112.473733425d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_151  &
   adams_id = 151  &
   location = 2.9577222014E-02, 0.1794932627, -0.2052343343  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_172  &
   adams_id = 172  &
   location = 0.15349302, 0.1901152838, -0.1890551054  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_174  &
   adams_id = 174  &
   location = 0.1548669757, 0.1878749549, -0.1705593445  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_192  &
   adams_id = 192  &
   location = 0.15349302, 0.1808747351, -0.1928777039  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_208  &
   adams_id = 208  &
   location = 0.1548669757, 0.1693938575, -0.1782045415  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_235  &
   adams_id = 235  &
   location = 0.1419404522, 0.1744770664, -0.1800283373  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_237  &
   adams_id = 237  &
   location = 0.1592695109, 0.1816907926, -0.1817702909  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_239  &
   adams_id = 239  &
   location = 0.1592695109, 0.1816907926, -0.1817702909  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_241  &
   adams_id = 241  &
   location = 0.1592695109, 0.1816907926, -0.1817702909  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_8.MARKER_279  &
   adams_id = 279  &
   location = 2.4687762294E-06, 0.1915818895, -0.2056805087  &
   orientation = 0.0d, 112.473733425d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_8  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_8_SOLID38.xmt_txt"  &
   part_name = _06_bar_bottom_8
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_8_SOLID39.xmt_txt"  &
   part_name = _06_bar_bottom_8
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_8.CSG_1234  &
   adams_id = 1234  &
   base_object = .Tensegrity._06_bar_bottom_8.SOLID38  &
   object = .Tensegrity._06_bar_bottom_8.SOLID39  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_8_SOLID44.xmt_txt"  &
   part_name = _06_bar_bottom_8
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_8.CSG_1265  &
   adams_id = 1265  &
   base_object = .Tensegrity._06_bar_bottom_8.CSG_1234  &
   object = .Tensegrity._06_bar_bottom_8.SOLID44  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_8_SOLID34.xmt_txt"  &
   part_name = _06_bar_bottom_8
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_8.CSG_1296  &
   adams_id = 1296  &
   base_object = .Tensegrity._06_bar_bottom_8.CSG_1265  &
   object = .Tensegrity._06_bar_bottom_8.SOLID34  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_8  &
   color = GREEN
!
!-------------------------------- _03_motor_4 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor_4  &
   adams_id = 41  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor_4.PSMAR  &
   adams_id = 68  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor_4.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor_4.cm  &
   adams_id = 69  &
   location = -3.3373974414E-03, 0.1827125523, -0.1842972648  &
   orientation = 0.7023736984d, 112.4247970058d, 4.3060892371d
!
marker create  &
   marker_name = .Tensegrity._03_motor_4.MARKER_137  &
   adams_id = 137  &
   location = -3.5454891279E-03, 0.2021435215, -0.1762751905  &
   orientation = 180.0d, 67.526266575d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_4  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor_4  &
   color = COLOR_R203G210B238
!
!------------------------------ _06_bar_bottom_9 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_9  &
   adams_id = 47  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_9
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR  &
   adams_id = 77  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR3  &
   adams_id = 79  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR4  &
   adams_id = 81  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR5  &
   adams_id = 88  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR1  &
   adams_id = 90  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR2  &
   adams_id = 92  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_9.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_124  &
   adams_id = 124  &
   location = -6.0E-03, 0.2510718489, -6.2245839745E-02  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_126  &
   adams_id = 126  &
   location = -2.1E-02, 0.2310502294, -7.4367867901E-02  &
   orientation = 89.7458164934d, 89.491393062d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.cm  &
   adams_id = 78  &
   location = 2.5247870852E-04, 0.2701958142, -0.1542722678  &
   orientation = 1.9326588448d, 14.7895895925d, 357.6750569841d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_144  &
   adams_id = 144  &
   location = 1.1E-02, 0.2217609128, -6.7924116135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_158  &
   adams_id = 158  &
   location = 5.0E-03, 0.29503102, -0.2101664115  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_159  &
   adams_id = 159  &
   location = -5.0E-03, 0.29503102, -0.2101664115  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_169  &
   adams_id = 169  &
   location = -1.0E-02, 0.2789717665, -0.2182966252  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_171  &
   adams_id = 171  &
   location = 1.0E-02, 0.2789717665, -0.2182966252  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_217  &
   adams_id = 217  &
   location = -5.0E-03, 0.2783584013, -0.2047430118  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_219  &
   adams_id = 219  &
   location = -5.0E-03, 0.2783584013, -0.2047430118  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_221  &
   adams_id = 221  &
   location = 0.0, 0.2854519237, -0.2133848832  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_223  &
   adams_id = 223  &
   location = 0.0, 0.2880430268, -0.2193084229  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_225  &
   adams_id = 225  &
   location = 0.0, 0.2880430268, -0.2193084229  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_9.MARKER_278  &
   adams_id = 278  &
   location = -6.0E-03, 0.2510718489, -6.2245839745E-02  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_9  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID46.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID53.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_9.CSG_1609  &
   adams_id = 1609  &
   base_object = .Tensegrity._06_bar_bottom_9.SOLID46  &
   object = .Tensegrity._06_bar_bottom_9.SOLID53  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID54.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_9.CSG_1633  &
   adams_id = 1633  &
   base_object = .Tensegrity._06_bar_bottom_9.CSG_1609  &
   object = .Tensegrity._06_bar_bottom_9.SOLID54  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID47.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_9.CSG_1657  &
   adams_id = 1657  &
   base_object = .Tensegrity._06_bar_bottom_9.CSG_1633  &
   object = .Tensegrity._06_bar_bottom_9.SOLID47  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID48.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_9.CSG_1681  &
   adams_id = 1681  &
   base_object = .Tensegrity._06_bar_bottom_9.CSG_1657  &
   object = .Tensegrity._06_bar_bottom_9.SOLID48  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_9_SOLID52.xmt_txt"  &
   part_name = _06_bar_bottom_9
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_9.CSG_1911  &
   adams_id = 1911  &
   base_object = .Tensegrity._06_bar_bottom_9.CSG_1681  &
   object = .Tensegrity._06_bar_bottom_9.SOLID52  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_9  &
   color = WHITE
!
!----------------------------- _06_bar_bottom_10 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_10  &
   adams_id = 50  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_10
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR3  &
   adams_id = 76  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR  &
   adams_id = 82  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR2  &
   adams_id = 84  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR1  &
   adams_id = 93  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_10.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_123  &
   adams_id = 123  &
   location = -6.0E-03, 0.2510718489, -6.2245839745E-02  &
   orientation = 90.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.cm  &
   adams_id = 83  &
   location = -2.3946758405E-04, 0.1980593027, 2.2113694293E-02  &
   orientation = 180.9353130472d, 147.8276788947d, 90.2545828617d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_143  &
   adams_id = 143  &
   location = 1.1E-02, 0.2351155754, -3.6841168189E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_153  &
   adams_id = 153  &
   location = 6.0E-03, 0.1790307947, 6.3734660802E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_155  &
   adams_id = 155  &
   location = 5.0E-03, 0.1776844697, 7.3500971828E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_162  &
   adams_id = 162  &
   location = -5.0E-03, 0.1776844697, 7.3500971828E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_175  &
   adams_id = 175  &
   location = 1.0E-02, 0.1605747999, 6.7909979141E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_177  &
   adams_id = 177  &
   location = -1.0E-02, 0.1605747999, 6.7909979141E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_209  &
   adams_id = 209  &
   location = 0.0, 0.1662802354, 7.5034549594E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_211  &
   adams_id = 211  &
   location = 0.0, 0.1662802354, 7.5034549594E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_10.MARKER_277  &
   adams_id = 277  &
   location = -6.0E-03, 0.2510718489, -6.2245839745E-02  &
   orientation = 90.0d, 90.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_10  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_10_SOLID49.xmt_txt"  &
   part_name = _06_bar_bottom_10
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_10_SOLID55.xmt_txt"  &
   part_name = _06_bar_bottom_10
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_10.CSG_1548  &
   adams_id = 1548  &
   base_object = .Tensegrity._06_bar_bottom_10.SOLID49  &
   object = .Tensegrity._06_bar_bottom_10.SOLID55  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_10_SOLID50.xmt_txt"  &
   part_name = _06_bar_bottom_10
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_10.CSG_1568  &
   adams_id = 1568  &
   base_object = .Tensegrity._06_bar_bottom_10.CSG_1548  &
   object = .Tensegrity._06_bar_bottom_10.SOLID50  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_10_SOLID45.xmt_txt"  &
   part_name = _06_bar_bottom_10
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_10.CSG_1588  &
   adams_id = 1588  &
   base_object = .Tensegrity._06_bar_bottom_10.CSG_1568  &
   object = .Tensegrity._06_bar_bottom_10.SOLID45  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_10  &
   color = YELLOW
!
!-------------------------------- _03_motor_5 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor_5  &
   adams_id = 52  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor_5.PSMAR  &
   adams_id = 86  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor_5.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor_5.MARKER_125  &
   adams_id = 125  &
   location = -2.1E-02, 0.2310502294, -7.4367867901E-02  &
   orientation = 89.7458164934d, 89.491393062d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._03_motor_5.cm  &
   adams_id = 87  &
   location = 2.1798693388E-05, 0.2309569689, -7.418125348E-02  &
   orientation = 269.7079892616d, 90.5818227581d, 63.4869096421d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_5  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor_5  &
   color = COLOR_R203G210B238
!
!----------------------------- _06_bar_bottom_11 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_11  &
   adams_id = 58  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_11
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR  &
   adams_id = 95  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR4  &
   adams_id = 97  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR4  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR1  &
   adams_id = 99  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR5  &
   adams_id = 106  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR5  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR2  &
   adams_id = 108  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR3  &
   adams_id = 110  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_11.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_128  &
   adams_id = 128  &
   location = 0.0, 4.8146437491E-02, -0.1461886563  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_130  &
   adams_id = 130  &
   location = 2.1E-02, 7.0880540701E-02, -0.1406236437  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.cm  &
   adams_id = 96  &
   location = -2.5248659416E-04, 9.9623753777E-02, -0.2248310709  &
   orientation = 359.0184775202d, 30.16931535d, 0.3931946146d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_146  &
   adams_id = 146  &
   location = 2.0E-03, 7.0880540701E-02, -0.1406236437  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_148  &
   adams_id = 148  &
   location = -1.1E-02, 7.2902858267E-02, -0.1295005339  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_184  &
   adams_id = 184  &
   location = -5.0E-03, 0.1215338166, -0.2819354679  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_188  &
   adams_id = 188  &
   location = -6.0E-03, 0.1372637454, -0.2767953385  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_190  &
   adams_id = 190  &
   location = -1.0E-02, 0.1386434864, -0.2763444752  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_191  &
   adams_id = 191  &
   location = 1.0E-02, 0.1386434864, -0.2763444752  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_194  &
   adams_id = 194  &
   location = 5.0E-03, 0.1215338166, -0.2819354679  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_227  &
   adams_id = 227  &
   location = 0.0, 0.132938051, -0.2834690457  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_229  &
   adams_id = 229  &
   location = 0.0, 0.132938051, -0.2834690457  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_11.MARKER_282  &
   adams_id = 282  &
   location = 6.0E-03, 4.8146437491E-02, -0.1461886563  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_11  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID57.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID59.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_11.CSG_1496  &
   adams_id = 1496  &
   base_object = .Tensegrity._06_bar_bottom_11.SOLID57  &
   object = .Tensegrity._06_bar_bottom_11.SOLID59  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID64.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_11.CSG_1509  &
   adams_id = 1509  &
   base_object = .Tensegrity._06_bar_bottom_11.CSG_1496  &
   object = .Tensegrity._06_bar_bottom_11.SOLID64  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID65.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_11.CSG_1522  &
   adams_id = 1522  &
   base_object = .Tensegrity._06_bar_bottom_11.CSG_1509  &
   object = .Tensegrity._06_bar_bottom_11.SOLID65  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID58.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_11.CSG_1535  &
   adams_id = 1535  &
   base_object = .Tensegrity._06_bar_bottom_11.CSG_1522  &
   object = .Tensegrity._06_bar_bottom_11.SOLID58  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_11_SOLID63.xmt_txt"  &
   part_name = _06_bar_bottom_11
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_11.CSG_1935  &
   adams_id = 1935  &
   base_object = .Tensegrity._06_bar_bottom_11.CSG_1535  &
   object = .Tensegrity._06_bar_bottom_11.SOLID63  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_11  &
   color = WHITE
!
!----------------------------- _06_bar_bottom_12 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._06_bar_bottom_12  &
   adams_id = 61  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._06_bar_bottom_12
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR3  &
   adams_id = 94  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR3  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR  &
   adams_id = 100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR1  &
   adams_id = 102  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR1  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR2  &
   adams_id = 111  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._06_bar_bottom_12.PSMAR2  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_127  &
   adams_id = 127  &
   location = 0.0, 4.8146437491E-02, -0.1461886563  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.cm  &
   adams_id = 101  &
   location = 2.3945816826E-04, 2.6069201505E-02, -4.9031739967E-02  &
   orientation = 177.7496057828d, 167.2114858408d, 87.219797945d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_145  &
   adams_id = 145  &
   location = -1.1E-02, 4.1492229462E-02, -0.1169359382  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_147  &
   adams_id = 147  &
   location = -1.1E-02, 4.1492229462E-02, -0.1169359382  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_180  &
   adams_id = 180  &
   location = -1.0E-02, 2.0246519867E-02, 9.8621291756E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_196  &
   adams_id = 196  &
   location = 1.0E-02, 2.0246519867E-02, 9.8621291756E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_197  &
   adams_id = 197  &
   location = 5.0E-03, 4.187266332E-03, 1.7319154084E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_204  &
   adams_id = 204  &
   location = -5.0E-03, 4.187266332E-03, 1.7319154084E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_205  &
   adams_id = 205  &
   location = 5.0E-03, 4.187266332E-03, 1.7319154084E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_213  &
   adams_id = 213  &
   location = 0.0, 1.1175259563E-02, 1.0873926801E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_215  &
   adams_id = 215  &
   location = 0.0, 1.1175259563E-02, 1.0873926801E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._06_bar_bottom_12.MARKER_281  &
   adams_id = 281  &
   location = 6.0E-03, 4.8146437491E-02, -0.1461886563  &
   orientation = 270.0d, 90.0d, 180.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_12  &
   density = 1000.0
!
! ****** Graphics for current part ******
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_12_SOLID60.xmt_txt"  &
   part_name = _06_bar_bottom_12
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_12_SOLID61.xmt_txt"  &
   part_name = _06_bar_bottom_12
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_12.CSG_1468  &
   adams_id = 1468  &
   base_object = .Tensegrity._06_bar_bottom_12.SOLID60  &
   object = .Tensegrity._06_bar_bottom_12.SOLID61  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_12_SOLID66.xmt_txt"  &
   part_name = _06_bar_bottom_12
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_12.CSG_1477  &
   adams_id = 1477  &
   base_object = .Tensegrity._06_bar_bottom_12.CSG_1468  &
   object = .Tensegrity._06_bar_bottom_12.SOLID66  &
   type = union
!
file parasolid read  &
   file_name = "Controls_Plant_1_Tensegrity__06_bar_bottom_12_SOLID56.xmt_txt"  &
   part_name = _06_bar_bottom_12
!
geometry create shape csg  &
   csg_name = .Tensegrity._06_bar_bottom_12.CSG_1486  &
   adams_id = 1486  &
   base_object = .Tensegrity._06_bar_bottom_12.CSG_1477  &
   object = .Tensegrity._06_bar_bottom_12.SOLID56  &
   type = union
!
part attributes  &
   part_name = .Tensegrity._06_bar_bottom_12  &
   color = LtBlue
!
!-------------------------------- _03_motor_6 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._03_motor_6  &
   adams_id = 63  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._03_motor_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._03_motor_6.PSMAR  &
   adams_id = 104  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._03_motor_6.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._03_motor_6.MARKER_129  &
   adams_id = 129  &
   location = 2.1E-02, 7.0880540701E-02, -0.1406236437  &
   orientation = 270.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .Tensegrity._03_motor_6.cm  &
   adams_id = 105  &
   location = -2.1798693393E-05, 7.0814710946E-02, -0.1404256819  &
   orientation = 270.2043782374d, 89.3819253941d, 71.563038477d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_6  &
   density = 7900.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._03_motor_6  &
   color = COLOR_R203G210B238
!
!------------------------------ _04_chipbattery -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
part create rigid_body name_and_position  &
   part_name = .Tensegrity._04_chipbattery  &
   adams_id = 68  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity._04_chipbattery
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.PSMAR  &
   adams_id = 112  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .Tensegrity._04_chipbattery.PSMAR  &
   visibility = off
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.cm  &
   adams_id = 113  &
   location = -2.0E-03, 0.1469770668, -0.1075800045  &
   orientation = 90.0d, 90.0d, 22.473733425d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_210  &
   adams_id = 210  &
   location = -5.2E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_212  &
   adams_id = 212  &
   location = 4.8E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_214  &
   adams_id = 214  &
   location = -5.2E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_216  &
   adams_id = 216  &
   location = 4.8E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_218  &
   adams_id = 218  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_220  &
   adams_id = 220  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_222  &
   adams_id = 222  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_224  &
   adams_id = 224  &
   location = -5.2E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_226  &
   adams_id = 226  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_228  &
   adams_id = 228  &
   location = -5.2E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_230  &
   adams_id = 230  &
   location = 4.8E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_232  &
   adams_id = 232  &
   location = 4.8E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_234  &
   adams_id = 234  &
   location = 4.8E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_236  &
   adams_id = 236  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_238  &
   adams_id = 238  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_240  &
   adams_id = 240  &
   location = 4.8E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_242  &
   adams_id = 242  &
   location = 4.8E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_244  &
   adams_id = 244  &
   location = -5.2E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_246  &
   adams_id = 246  &
   location = -5.2E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_248  &
   adams_id = 248  &
   location = -5.2E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_250  &
   adams_id = 250  &
   location = -5.2E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_252  &
   adams_id = 252  &
   location = -5.2E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_254  &
   adams_id = 254  &
   location = -5.2E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_256  &
   adams_id = 256  &
   location = -5.2E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_258  &
   adams_id = 258  &
   location = -5.2E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_260  &
   adams_id = 260  &
   location = 4.8E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_262  &
   adams_id = 262  &
   location = 4.8E-02, 0.1331472838, -5.9191720902E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_264  &
   adams_id = 264  &
   location = 4.8E-02, 0.1713732689, -0.1515972081  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_266  &
   adams_id = 266  &
   location = 4.8E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_268  &
   adams_id = 268  &
   location = 4.8E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_270  &
   adams_id = 270  &
   location = -5.2E-02, 0.1359194484, -5.804494135E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .Tensegrity._04_chipbattery.MARKER_272  &
   adams_id = 272  &
   location = -5.2E-02, 0.1741454335, -0.1504504286  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .Tensegrity._04_chipbattery  &
   density = 3000.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .Tensegrity._04_chipbattery  &
   color = COLOR_R197G192B187
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Controls_Plant_1.xmt_txt"  &
   model_name = .Tensegrity
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor.SOLID7  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor_2.SOLID18  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor_3.SOLID29  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor_4.SOLID40  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor_5.SOLID51  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._03_motor_6.SOLID62  &
   color = COLOR_R203G210B238
!
geometry attributes  &
   geometry_name = .Tensegrity._04_chipbattery.SOLID67  &
   color = COLOR_R197G192B187
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .Tensegrity.CONTACT_1  &
   adams_id = 1  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom.CSG_1786  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_2  &
   adams_id = 2  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_2.CSG_198  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_3  &
   adams_id = 3  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_4.CSG_641  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_4  &
   adams_id = 4  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_3.CSG_1854  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_5  &
   adams_id = 5  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_5.CSG_1705  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_6  &
   adams_id = 6  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_6.CSG_1007  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_7  &
   adams_id = 7  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_7.CSG_1751  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_8  &
   adams_id = 8  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_8.CSG_1296  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_9  &
   adams_id = 9  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_10.CSG_1588  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_10  &
   adams_id = 10  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_9.CSG_1911  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_11  &
   adams_id = 11  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_12.CSG_1486  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
contact create  &
   contact_name = .Tensegrity.CONTACT_12  &
   adams_id = 12  &
   type = solid_to_solid  &
   i_geometry_name = .Tensegrity._06_bar_bottom_11.CSG_1935  &
   j_geometry_name = .Tensegrity.groundplane.BOX_69  &
   stiffness = 1.0E+08  &
   damping = 1.0E+04  &
   exponent = 2.2  &
   dmax = 1.0E-04  &
   coulomb_friction = on  &
   mu_static = 0.8  &
   mu_dynamic = 0.7  &
   stiction_transition_velocity = 0.1  &
   friction_transition_velocity = 1.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_1  &
   adams_id = 1  &
   i_marker_name = .Tensegrity.ground.MARKER_2  &
   j_marker_name = .Tensegrity.groundplane.MARKER_3
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_1  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_2  &
   adams_id = 2  &
   i_marker_name = .Tensegrity._06_bar_bottom_2.MARKER_115  &
   j_marker_name = .Tensegrity._06_bar_bottom.MARKER_116
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_2  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_3  &
   adams_id = 3  &
   i_marker_name = .Tensegrity._03_motor.MARKER_117  &
   j_marker_name = .Tensegrity._06_bar_bottom.MARKER_118
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_4  &
   adams_id = 4  &
   i_marker_name = .Tensegrity._06_bar_bottom_4.MARKER_119  &
   j_marker_name = .Tensegrity._06_bar_bottom_3.MARKER_120
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_4  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_5  &
   adams_id = 5  &
   i_marker_name = .Tensegrity._03_motor_2.MARKER_121  &
   j_marker_name = .Tensegrity._06_bar_bottom_3.MARKER_122
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_5  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_6  &
   adams_id = 6  &
   i_marker_name = .Tensegrity._06_bar_bottom_10.MARKER_123  &
   j_marker_name = .Tensegrity._06_bar_bottom_9.MARKER_124
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_6  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_7  &
   adams_id = 7  &
   i_marker_name = .Tensegrity._03_motor_5.MARKER_125  &
   j_marker_name = .Tensegrity._06_bar_bottom_9.MARKER_126
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_7  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_8  &
   adams_id = 8  &
   i_marker_name = .Tensegrity._06_bar_bottom_12.MARKER_127  &
   j_marker_name = .Tensegrity._06_bar_bottom_11.MARKER_128
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_8  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_9  &
   adams_id = 9  &
   i_marker_name = .Tensegrity._03_motor_6.MARKER_129  &
   j_marker_name = .Tensegrity._06_bar_bottom_11.MARKER_130
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_9  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_10  &
   adams_id = 10  &
   i_marker_name = .Tensegrity._06_bar_bottom_6.MARKER_131  &
   j_marker_name = .Tensegrity._06_bar_bottom_5.MARKER_132
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_10  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_11  &
   adams_id = 11  &
   i_marker_name = .Tensegrity._03_motor_3.MARKER_133  &
   j_marker_name = .Tensegrity._06_bar_bottom_5.MARKER_134
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_11  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .Tensegrity.JOINT_12  &
   adams_id = 12  &
   i_marker_name = .Tensegrity._06_bar_bottom_8.MARKER_135  &
   j_marker_name = .Tensegrity._06_bar_bottom_7.MARKER_136
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_12  &
   name_visibility = off
!
constraint create joint fixed  &
   joint_name = .Tensegrity.JOINT_13  &
   adams_id = 13  &
   i_marker_name = .Tensegrity._03_motor_4.MARKER_137  &
   j_marker_name = .Tensegrity._06_bar_bottom_7.MARKER_138
!
constraint attributes  &
   constraint_name = .Tensegrity.JOINT_13  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_55  &
   adams_id = 55  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_2.MARKER_273  &
   j_marker_name = .Tensegrity._06_bar_bottom.MARKER_274  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_56  &
   adams_id = 56  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_6.MARKER_275  &
   j_marker_name = .Tensegrity._06_bar_bottom_5.MARKER_276  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_57  &
   adams_id = 57  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_10.MARKER_277  &
   j_marker_name = .Tensegrity._06_bar_bottom_9.MARKER_278  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_58  &
   adams_id = 58  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_8.MARKER_279  &
   j_marker_name = .Tensegrity._06_bar_bottom_7.MARKER_280  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_59  &
   adams_id = 59  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_12.MARKER_281  &
   j_marker_name = .Tensegrity._06_bar_bottom_11.MARKER_282  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_60  &
   adams_id = 60  &
   type_of_freedom = rotational  &
   i_marker_name = .Tensegrity._06_bar_bottom_4.MARKER_283  &
   j_marker_name = .Tensegrity._06_bar_bottom_3.MARKER_284  &
   action_only = off  &
   function = ""
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Tensegrity.K_joint  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 5000.0
!
variable create  &
   variable_name = .Tensegrity.D_joint  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 6.0
!
variable create  &
   variable_name = .Tensegrity.K_spring  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 300.0
!
variable create  &
   variable_name = .Tensegrity.D_spring  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 6.0
!
variable create  &
   variable_name = .Tensegrity.L_spring  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 0.16
!
variable create  &
   variable_name = .Tensegrity.K_chip  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 50.0
!
variable create  &
   variable_name = .Tensegrity.D_chip  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 2.0
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .Tensegrity.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=2000 model_name=.Tensegrity"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_1  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_1  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_2  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_2  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_3  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_3  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_4  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_4  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_5  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_5  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_6  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_6  &
   color = RED
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_7  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_7  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_8  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_8  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_9  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_9  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_10  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_10  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_11  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_11  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_12  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_12  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_13  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_13  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_14  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_14  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_15  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_15  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_16  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_16  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_17  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_17  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_18  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_18  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_19  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_19  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_20  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_20  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_21  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_21  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_22  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_22  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_23  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_23  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_24  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_24  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_25  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_25  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_26  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_26  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_27  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_27  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_28  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_28  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_29  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_29  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_30  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_30  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_31  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_31  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_32  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_32  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_33  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_33  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_34  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_34  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_35  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_35  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_36  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_36  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_37  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_37  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_38  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_38  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_39  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_39  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_40  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_40  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_41  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_41  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_42  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_42  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_43  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_43  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_44  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_44  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_45  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_45  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_46  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_46  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_47  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_47  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_48  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_48  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_49  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_49  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_50  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_50  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_51  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_51  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_52  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_52  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_53  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_53  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.SPRING_54  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .Tensegrity.SPRING_54  &
   color = RED  &
   visibility = off
!
ude create instance  &
   instance_name = .Tensegrity.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_139)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_140)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_1.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_141)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_142)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_2.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_2
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_143)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_144)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_3.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_3
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_147)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_148)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_4.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_4
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_149)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_150)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_5.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_5
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_151)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_152)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.stiffness_coefficient  &
   real_value = (.Tensegrity.K_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.damping_coefficient  &
   real_value = (.Tensegrity.D_joint)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_6.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_6
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_155)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_156)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_7.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_7
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_157)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_158)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_8.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_8
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_159)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_160)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_9.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_9
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_161)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_162)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_10.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_10
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_165)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_166)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_11.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_11
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_167)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_168)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_12.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_12
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_169)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_170)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_13.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_13
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_171)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_172)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_14.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_14
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_173)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_174)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_15.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_15
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_175)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_176)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_16.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_16
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_177)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_178)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_17.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_17
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_179)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_180)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_18.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_18
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_181)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_182)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_19.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_19
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_183)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_184)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_20.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_20
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_185)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_186)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_21.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_21
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_189)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_190)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_22.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_22
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_191)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_192)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_23.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_23
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_193)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_194)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_24.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_24
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_195)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_196)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_25.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_25
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_199)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_200)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_26.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_26
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_201)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_202)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_27.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_27
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_203)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_204)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_28.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_28
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_205)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_206)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_29.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_29
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_207)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.j_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_208)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.stiffness_coefficient  &
   real_value = (.Tensegrity.K_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.damping_coefficient  &
   real_value = (.Tensegrity.D_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.free_length_mode  &
   string_value = "Constant_Value"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.free_length  &
   real_value = (.Tensegrity.L_spring)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.i_dynamic_visibility  &
   string_value = "On"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_30.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_30
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_209)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_210)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_31.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_31
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_10.MARKER_211)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_212)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_32.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_32
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_213)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_214)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_33.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_33
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_12.MARKER_215)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_216)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_34.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_34
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_225)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_226)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_35.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_35
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_9.MARKER_223)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_224)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_36.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_36
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_227)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_228)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_37.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_37
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_11.MARKER_229)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_230)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_38.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_38
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_231)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_232)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_39.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_39
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_6.MARKER_233)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_234)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_40.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_40
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_237)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_238)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_41.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_41
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_8.MARKER_241)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_242)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_42.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_42
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_243)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_244)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_43.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_43
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_7.MARKER_245)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_246)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_44.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_44
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_251)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_252)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_45.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_45
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_5.MARKER_253)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_254)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_46.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_46
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_255)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_256)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_47.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_47
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom.MARKER_257)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_258)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_48.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_48
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_261)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_262)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_49.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_49
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_3.MARKER_263)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_264)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_50.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_50
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_265)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_266)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_51.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_51
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_4.MARKER_267)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_268)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_52.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_52
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_269)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_270)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_53.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_53
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.i_marker  &
   object_value = (.Tensegrity._06_bar_bottom_2.MARKER_271)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.j_marker  &
   object_value = (.Tensegrity._04_chipbattery.MARKER_272)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.stiffness_coefficient  &
   real_value = (.Tensegrity.K_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.damping_coefficient  &
   real_value = (.Tensegrity.D_chip)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.free_length_mode  &
   string_value = "design_length"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.preload  &
   real_value = 0.0
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.i_dynamic_visibility  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.j_dynamic_visibility  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.spring_visibility  &
   string_value = "Depends"
!
variable modify  &
   variable_name = .Tensegrity.SPRING_54.damper_visibility  &
   string_value = "Depends"
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_54
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.input_channels  &
   object_value =   &
      .Tensegrity.torque_1,  &
      .Tensegrity.torque_2,  &
      .Tensegrity.torque_3,  &
      .Tensegrity.torque_4,  &
      .Tensegrity.torque_5,  &
      .Tensegrity.torque_6
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.output_channels  &
   object_value = .Tensegrity.out_
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.file_name  &
   string_value = "Controls_Plant_1"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.host  &
   string_value = "WKS054145.workspace.rug.nl"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .Tensegrity.Controls_Plant_1.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .Tensegrity.Controls_Plant_1
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .Tensegrity.ground
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_55_force_graphic_1  &
   adams_id = 2200  &
   force_element_name = .Tensegrity.SFORCE_55  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_2.MARKER_273
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_56_force_graphic_1  &
   adams_id = 2201  &
   force_element_name = .Tensegrity.SFORCE_56  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_6.MARKER_275
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_57_force_graphic_1  &
   adams_id = 2202  &
   force_element_name = .Tensegrity.SFORCE_57  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_10.MARKER_277
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_58_force_graphic_1  &
   adams_id = 2203  &
   force_element_name = .Tensegrity.SFORCE_58  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_8.MARKER_279
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_59_force_graphic_1  &
   adams_id = 2204  &
   force_element_name = .Tensegrity.SFORCE_59  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_12.MARKER_281
!
geometry create shape force  &
   force_name = .Tensegrity.SFORCE_60_force_graphic_1  &
   adams_id = 2205  &
   force_element_name = .Tensegrity.SFORCE_60  &
   applied_at_marker_name = .Tensegrity._06_bar_bottom_4.MARKER_283
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1950  &
   adams_id = 1950  &
   contact_element_name = .Tensegrity.CONTACT_1  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1950  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1953  &
   adams_id = 1953  &
   contact_element_name = .Tensegrity.CONTACT_2  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1953  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1956  &
   adams_id = 1956  &
   contact_element_name = .Tensegrity.CONTACT_3  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1956  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1959  &
   adams_id = 1959  &
   contact_element_name = .Tensegrity.CONTACT_4  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1959  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1962  &
   adams_id = 1962  &
   contact_element_name = .Tensegrity.CONTACT_5  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1962  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1965  &
   adams_id = 1965  &
   contact_element_name = .Tensegrity.CONTACT_6  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1965  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1968  &
   adams_id = 1968  &
   contact_element_name = .Tensegrity.CONTACT_7  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1968  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1971  &
   adams_id = 1971  &
   contact_element_name = .Tensegrity.CONTACT_8  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1971  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1974  &
   adams_id = 1974  &
   contact_element_name = .Tensegrity.CONTACT_9  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1974  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1977  &
   adams_id = 1977  &
   contact_element_name = .Tensegrity.CONTACT_10  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1977  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1980  &
   adams_id = 1980  &
   contact_element_name = .Tensegrity.CONTACT_11  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1980  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .Tensegrity.GCONTACT_1983  &
   adams_id = 1983  &
   contact_element_name = .Tensegrity.CONTACT_12  &
   force_display = components
!
geometry attributes  &
   geometry_name = .Tensegrity.GCONTACT_1983  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.8  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
output_control set results  &
   model_name = Tensegrity  &
   create_results_file = off
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .Tensegrity.dens_bar  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 1000.0
!
variable create  &
   variable_name = .Tensegrity.dens_motor  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 7900.0
!
variable create  &
   variable_name = .Tensegrity.dens_chip  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 3000.0
!
variable create  &
   variable_name = .Tensegrity.miu  &
   units = "no_units"  &
   range = -10.0, 10.0  &
   use_allowed_values = no  &
   delta_type = percent_relative  &
   real_value = 0.8
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_3  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_4  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_5  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.torque_6  &
   function = "0"
!
data_element modify variable  &
   variable_name = .Tensegrity.out_  &
   function = "0"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_55  &
   function = "VARVAL(.Tensegrity.torque_1)"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_56  &
   function = "VARVAL(.Tensegrity.torque_2)"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_57  &
   function = "VARVAL(.Tensegrity.torque_3)"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_58  &
   function = "VARVAL(.Tensegrity.torque_4)"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_59  &
   function = "VARVAL(.Tensegrity.torque_5)"
!
force modify direct single_component_force  &
   single_component_force_name = .Tensegrity.SFORCE_60  &
   function = "VARVAL(.Tensegrity.torque_6)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_2
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_3
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_4
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_5
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_6
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_7
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_8
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_9
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_10
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_11
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_12
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_13
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_14
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_15
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_16
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_17
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_18
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_19
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_20
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_21
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_22
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_23
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_24
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_25
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_26
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_27
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_28
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_29
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_30
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_31
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_32
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_33
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_34
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_35
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_36
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_37
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_38
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_39
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_40
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_41
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_42
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_43
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_44
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_45
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_46
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_47
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_48
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_49
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_50
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_51
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_52
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_53
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.SPRING_54
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .Tensegrity.Controls_Plant_1
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_2  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_3  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_4  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_2  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_5  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_6  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_3  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_7  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_8  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_4  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_9  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_10  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_5  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_11  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._06_bar_bottom_12  &
   density = (.Tensegrity.dens_bar)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._03_motor_6  &
   density = (.Tensegrity.dens_motor)
!
part modify rigid_body mass_properties  &
   part_name = .Tensegrity._04_chipbattery  &
   density = (.Tensegrity.dens_chip)
!
geometry modify shape block  &
   block_name = .Tensegrity.groundplane.BOX_69  &
   diag_corner_coords =   &
      (20.0m),  &
      (20.0cm),  &
      (20.0m)
!
material modify  &
   material_name = .Tensegrity.steel  &
   density = (7801.0(kg/meter**3))  &
   youngs_modulus = (2.07E+11(Newton/meter**2))
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_1  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_2  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_3  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_4  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_5  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_6  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_7  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_8  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_9  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_10  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_11  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
contact modify  &
   contact_name = .Tensegrity.CONTACT_12  &
   mu_static = (.Tensegrity.miu)  &
   mu_dynamic = (.Tensegrity.miu - 0.1)
!
variable modify  &
   variable_name = .Tensegrity.K_joint  &
   real_value = (5000.0(newton/m))
!
variable modify  &
   variable_name = .Tensegrity.D_joint  &
   real_value = (6.0(newton-sec/m))
!
variable modify  &
   variable_name = .Tensegrity.K_spring  &
   real_value = (300(Ne/m))
!
variable modify  &
   variable_name = .Tensegrity.D_spring  &
   real_value = (6(Ne-sec/m))
!
variable modify  &
   variable_name = .Tensegrity.L_spring  &
   real_value = (16cm)
!
variable modify  &
   variable_name = .Tensegrity.K_chip  &
   real_value = (50.0(newton/m))
!
variable modify  &
   variable_name = .Tensegrity.D_chip  &
   real_value = (2.0(newton-sec/m))
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_55_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_55.i)
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_56_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_56.i)
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_57_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_57.i)
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_58_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_58.i)
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_59_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_59.i)
!
geometry modify shape force  &
   force_name = .Tensegrity.SFORCE_60_force_graphic_1  &
   applied_at_marker_name = (.Tensegrity.SFORCE_60.i)
!
model display  &
   model_name = Tensegrity
