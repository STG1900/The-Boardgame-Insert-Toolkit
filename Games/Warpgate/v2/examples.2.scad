include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = false;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

data =
[
    [   "example 1",
        [
            [ ENABLED_B,                t],
            [ BOX_SIZE_XYZ,             [140.0, 180.0, 22.0] ],

            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B,      f],
                    [ LID_CUTOUT_SIDES_4B, [f,f,t,t]],
                    [ LID_SOLID_B, t],
                    [ LID_HEIGHT, 15 ],
                    [ LID_INSET_B, f],
                ]
            ],

            [ LABEL,
                [
                    [ LBL_TEXT,     "Skull     and"],
                    [ LBL_SIZE,     AUTO ],
                    [ ROTATION,     45 ],
                    [ POSITION_XY, [ 2,-2]],
                ]
            ],

            [ LABEL,
                [
                    [ LBL_TEXT,     "Crossbones"],
                    [ LBL_SIZE,     AUTO ],
                    [ ROTATION,     315 ],
                    [ POSITION_XY, [ -4,-0]],
                ]
            ],        


            [   BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,              [ 22, 60.0, 20.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,               [2,2] ],
                    [CMP_SHAPE,                             SQUARE],
                    [CMP_SHAPE_ROTATED_B,                   f],
                    [CMP_SHAPE_VERTICAL_B,                  f],
                    [CMP_PADDING_XY,                        [15,12]],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,          [-5, 0] ],
                    [CMP_MARGIN_FBLR,                       [0,0,15,15]],
                    [CMP_CUTOUT_SIDES_4B,                   [f,f,t,t]],
                    [CMP_CUTOUT_TYPE,                       EXTERIOR],
                    [ROTATION,                              5 ],
                    [LABEL,               
                        [
                            [LBL_TEXT,        [   
                                                ["backleft", "backright"],
                                                ["frontleft", "frontright"],
                                            ]
                            ],
                            [LBL_PLACEMENT,     FRONT],
                            [ ROTATION,         10],
                            [ LBL_SIZE,         AUTO],
                            [ POSITION_XY,      [ -4,-2]],
                            [ LBL_FONT,         "Times New Roman:style=bold italic"],

                        ]
                    ],  
                ]
            ],
                            
        ]
    ],
    [   "shear",
        [
            [ BOX_SIZE_XYZ,                             [50.0, 50.0, 20.0] ],

            [ BOX_LID,
                [
                    [ LID_SOLID_B,       t],
                ]
            ],

            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,       [2,4]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 20, 5.0, 4.0] ],
                    [CMP_SHEAR,                     [0,45]],

                    [LABEL,               
                        [
                            [LBL_TEXT,        [   
                                                [ "1",  "2" ],
                                                [ "3",  "4" ],
                                                [ "4",  "5" ],
                                                [ "6",  "7" ]
                                            ]
                            ],
                            [LBL_PLACEMENT,   BACK_WALL],
                            [LBL_SIZE,        2],
                            
                        ]
                    ],                                                                              
                ]
            ],                              
        ]
    ],

     [   "cards",
        [
            [ BOX_SIZE_XYZ,                                     [ 138, 87, cos(20)*50 - 8] ],
            [ BOX_LID,
                [            
                    [ LID_PATTERN_RADIUS, 10],
                    [ LID_PATTERN_THICKNESS, 1.5],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "STOCK"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  

                    [ LID_PATTERN_N1,               10 ],
                    [ LID_PATTERN_N2,               10 ],
                    [ LID_PATTERN_ANGLE,            60 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       140 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ],                    

                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,       [2,4]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [  66, 10, 44] ],
                    [CMP_SHEAR,                     [0,40]],
                    [CMP_PADDING_XY,                [ 1, 6]],
                    [CMP_PADDING_HEIGHT_ADJUST_XY,  [ -20,-20]],
                    [CMP_MARGIN_FBLR,               [40,0,0,0]],
                    [POSITION_XY,                   [CENTER,-25]],
                    [CMP_CUTOUT_SIDES_4B,           [t,t,f,f]],
                    [CMP_CUTOUT_DEPTH_PCT,          30],
                    [CMP_CUTOUT_WIDTH_PCT,          50],
                    [CMP_CUTOUT_HEIGHT_PCT,         100],                    
                ]
            ],                  
        ]
    ],          
    [ "divider example 1",
        [
            [ TYPE, DIVIDERS ],
            [ DIV_TAB_TEXT,   ["001","002","003"]],
        ]
    ],
    
    [ "divider example 2",
        [
            [ TYPE,                     DIVIDERS ],

            [ DIV_TAB_TEXT,             ["001","002","PASS","004","010101"]],

            [ DIV_TAB_TEXT_SIZE,        6],

            [ DIV_TAB_SIZE_XY,          [30, 12]],
            [ DIV_TAB_CYCLE,            5],
            [ DIV_TAB_CYCLE_START,      2],

            [ DIV_FRAME_NUM_COLUMNS,    2],
            [ DIV_FRAME_SIZE_XY,        [120, 50]],
            [ DIV_FRAME_COLUMN,         7],


        ]
    ],    

    [   "lid pattern 1",
        [
            [ BOX_SIZE_XYZ,             [50.0, 50.0, 20.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 47, 47, 18.0] ],
                ]
            ],  

             [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         10],        

                    [ LID_PATTERN_N1,               3 ],
                    [ LID_PATTERN_N2,               3 ],
                    [ LID_PATTERN_ANGLE,            0 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       140 ],
                    [ LID_PATTERN_THICKNESS,        1 ]
                ]
            ]
        ]
    ],   

    [   "lid pattern 2",
        [
            [ BOX_SIZE_XYZ,             [50.0, 50.0, 20.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 47, 47, 18.0] ],
                ]
            ],  

             [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         10],        
                    [ LID_PATTERN_N1,               8 ],
                    [ LID_PATTERN_N2,               8 ],
                    [ LID_PATTERN_ANGLE,            22.5 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       130 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ]
        ]
    ],

    [   "lid pattern 3",
        [
            [ BOX_SIZE_XYZ,             [50.0, 50.0, 20.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 47, 47, 18.0] ],
                ]
            ],  

             [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         10],        

                    [ LID_PATTERN_N1,               6 ],
                    [ LID_PATTERN_N2,               3 ],
                    [ LID_PATTERN_ANGLE,            60 ],
                    [ LID_PATTERN_ROW_OFFSET,       10 ],
                    [ LID_PATTERN_COL_OFFSET,       140 ],
                    [ LID_PATTERN_THICKNESS,        0.6 ]
                ]
            ]
        ]
    ],    
    [   "lid label stencil",
        [
            [ BOX_SIZE_XYZ,             [50.0, 50.0, 20.0] ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 47, 47, 18.0] ],
                ]
            ],  

               [ BOX_LID,
                [
                    [ LID_PATTERN_RADIUS,         2],        

                    [LID_LABELS_INVERT_B,t],
                    [LID_LABELS_BG_THICKNESS, 0],
                    [LID_LABELS_BORDER_THICKNESS, 1],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "STENCIL"],
                        ]
                    ],                        
                ]
            ],
        ]
    ],    


   


];


MakeAll();