
include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 1.5;

// tolerance for fittings. This is the gap between fitting pieces,
// such as lids and boxes. Increase to loosen the fit and decrease to
// tighten it.
// Default = 0.1mm
g_tolerance = 0.1; 


data =
[
    [   "Tiles",
        [
            [ ENABLED_B,                 f],
            [ BOX_SIZE_XYZ,                             [175.0, 175.0, 28.0] ],
            [ BOX_LID, f],
            [ BOX_COMPONENTS,
                [
                    [   "my tiles",
                        [
                            [CMP_SHAPE, SQUARE ],
                            [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                            [CMP_COMPARTMENT_SIZE_XYZ,      [ 171, 171, 26.0] ],
                              [ LABEL,
                                [
                                    [ LBL_TEXT,     "TILES"],
                                    [ LBL_SIZE,     24 ],
                                    [ LBL_DEPTH, 1],
                                    [ LBL_FONT, "Blockletter:style regular"],
                    
                                ]
                              ],
                            [ CMP_CUTOUT_SIDES_4B, [ t, t, t, t ] ],
                        ]
                    ],                  
                ]
            ]
        ]
    ],
    [   "Tarot Cards",
        [
            [ ENABLED_B,                f],
            [ BOX_SIZE_XYZ, [81.0, 136.0, 56.5] ], 
            [ BOX_LID, t],
            [ BOX_LID_FIT_UNDER_B, t],
            [ BOX_LID_NOTCHES_B, f],
            [ BOX_LID_CUTOUT_SIDES_4B, [f,f,f,f]],
            [ LABEL,
                [
                    [ LBL_TEXT,     "OP & COMMANDO"],
                    [ LBL_SIZE,     AUTO ],
                    [ LBL_FONT, "Blockletter:style regular"],
    
                ]
            ],
            [ BOX_COMPONENTS,
                [
                    [   "my tarot-size cards",
                        [
                            [CMP_SHAPE, SQUARE ],
                            [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                            [CMP_COMPARTMENT_SIZE_XYZ,      [ 77, 132, 54.5] ],
                            [ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ],
                        ]
                    ],                  
                ]
            ]
        ]
    ],
    [   "Standard Cards",
        [
            [ ENABLED_B,                f],
            [ BOX_SIZE_XYZ, [72.0, 100.0, 36.0] ], 
            [ BOX_LID, t],
            [ BOX_LID_NOTCHES_B, f],
            [ BOX_LID_FIT_UNDER_B, t],
            [ BOX_LID_CUTOUT_SIDES_4B, [f,f,f,f]],
            [ LABEL,
                [
                    [ LBL_TEXT,     "EVENTS"],
                    [ LBL_SIZE,     AUTO ],
                    [ LBL_FONT, "Blockletter:style regular"],
    
                ]
            ],
            
            [ BOX_COMPONENTS,
                [
                    [   "my event cards",
                        [
                            [CMP_SHAPE, SQUARE ],
                            [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                            [CMP_COMPARTMENT_SIZE_XYZ,      [ 68, 96, 34.0] ],
                            [ CMP_CUTOUT_SIDES_4B, [ t, t, t, t ] ],

                        ]
                    ],                  
                ]
            ]
        ]
    ],
    [   "Standard Unused Cards",
        [
            [ ENABLED_B,                f],
            [ BOX_SIZE_XYZ, [72.0, 100.0, 19.2] ], 
            [ BOX_LID, t],
            [ BOX_LID_NOTCHES_B, f],
            [ BOX_LID_FIT_UNDER_B, t],
            [ BOX_LID_CUTOUT_SIDES_4B, [f,f,f,f]],
            [ LABEL,
                [
                    [ LBL_TEXT,     "UNUSED EVENTS"],
                    [ LBL_SIZE,     AUTO ],
                    [ LBL_FONT, "Blockletter:style regular"],
    
                ]
            ],
            
            [ BOX_COMPONENTS,
                [
                    [   "my unused event cards",
                        [
                            [CMP_SHAPE, SQUARE ],
                            [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                            [CMP_COMPARTMENT_SIZE_XYZ,      [ 68, 96, 17.2] ],
                            [ CMP_CUTOUT_SIDES_4B, [ t, t, t, t ] ],

                        ]
                    ],                  
                ]
            ]
        ]
    ],
    [   "Coin-style tokens",
        [
            [ ENABLED_B,                f],
            [ BOX_SIZE_XYZ, [109.0, 144, 36.0] ], 
            [ BOX_LID, f],
            [ BOX_LID_SOLID_B, false],
            [ BOX_LID_NOTCHES_B, f],
            [ BOX_LID_FIT_UNDER_B, t],
            [ BOX_LID_CUTOUT_SIDES_4B, [f,f,f,f]],
            [ LABEL, /* Not used, left here for customization purposes */
                [
                    [ LBL_TEXT,     "COMMANDOS & ENEMIES"],
                    [ LBL_SIZE,     AUTO ],
                    [ LBL_FONT, "Blockletter:style regular"],
    
                ]
            ],
            
            [ BOX_COMPONENTS,
                [
                  [   "row 1-1",
                    [
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [0.5,49.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 91, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t,t, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "REGULAR SOLDIER"],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90],
                            [ LBL_FONT, "Blockletter:style regular"],
    
                        ]
                    ],
                    ]
                  ],   
                  [   "row 1-2",
                    [
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [0.5,8]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 40, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "NO ENEMY"],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90],
                            [ LBL_FONT, "Blockletter:style regular"],
    
                        ]
                    ],
                    ]
                  ], 
                   [   "row 2-1",
                    [
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [36,49.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 91, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "REGULAR SOLDIER"],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90],
                            [ LBL_FONT, "Blockletter:style regular"],
    
                        ]
                    ],
                    ]
                  ],  
                    [   "row 2-2",
                    [
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [36,19]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 29, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    ]
                  ], 
                  [   "row 3",
                    [
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [71.5,25.0]],
                    [ CMP_PADDING_XY, [ 0, 1.5 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 57, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["COMMANDO"],["SPECIAL ENEMY"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90],
                            [ LBL_FONT, "Blockletter:style regular"],
    
                        ]
                    ],
                    ]
                  ], 
                    [   "row 3-3",
                    [
                    [ ENABLED_B,                t],
                    [CMP_SHAPE, ROUND ],
                    [POSITION_XY, [71.5,0.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 23, 34.0]],
                    [ CMP_CUTOUT_SIDES_4B, [ t, t, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "ESCORTED"],
                            [ LBL_SIZE,     2 ],
                            [ LBL_DEPTH, 1],
                            /*[ ROTATION, 90],*/
                            [ LBL_FONT, "Blockletter:style regular"],
    
                        ]
                    ],
                    ]
                  ],
                  [   "TEXT",
                    [
                    [CMP_SHAPE, SQUARE ],
                    [POSITION_XY, [36,0.0]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 15, 0]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                       [ LABEL,
                        [
                            [ LBL_TEXT,     "SLEDGEHAMMER"],
                            [ LBL_SIZE,     3 ],
                            [ LBL_DEPTH, 1],
                            [ LBL_FONT, "Blockletter:style regular"],
            
                        ]
            ],
                    ]
                  ],
                ]
            ]
        ]
    ],
  [   "Tokens",
        [
            [ ENABLED_B,                f],
            [ BOX_SIZE_XYZ, [175.0, 175.0, 28.6] ], 
            [ BOX_LID, t],
            [ BOX_LID_SOLID_B, false],
            [ BOX_LID_NOTCHES_B, f],
            [ BOX_LID_FIT_UNDER_B, t],
            [ BOX_LID_CUTOUT_SIDES_4B, [f,f,f,f]],
            [ LABEL,
                [
                    [ LBL_TEXT,     "TOKENS"],
                    [ LBL_SIZE,     AUTO ],
                    [ LBL_FONT, "Blockletter:style regular"],
    
                ]
            ],
            
            [ BOX_COMPONENTS,
                [
                  [   "MG42 Nest",
                    [
                    [ ENABLED_B,                t],
                    [CMP_SHAPE, SQUARE ],
                    [POSITION_XY, [0.5,0.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 79, 53.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f,f, f, f ] ],
                        
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "MG42  NEST"],
                            [ LBL_SIZE,     8 ],
                            [ LBL_DEPTH, 1],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                        ]
                    ],
                    ]
                  ],   
                  [   "DICE",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [81,0.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 90.5, 53.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["DICE"]]],
                            [ LBL_SIZE,     8 ],
                            [ LBL_DEPTH, 1],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                    [   "TRAMPILLA",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, SQUARE ],
                    [POSITION_XY, [0.5,55.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 32.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["TRAP"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                   [   "BAR",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [36,55.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 42, 32.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["BAR"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                   [   "GRENADE",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [79.5,55.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 33.0, 32.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["GRENADE"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ],  
                   [   "EXPLOSIVES",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [114,55.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 28.0, 32.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["EXPLOSIVE","BOMB"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                   [   "DOOR",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, SQUARE ],
                    [POSITION_XY, [0.5,89.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 40.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["DOOR"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                  [   "TOOLS",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [36,89.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 34, 40.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["MED. KIT","GER. UNIFORM"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                  [   "MODIFIERS",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [107,89.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 41, 40.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["MODIFIER"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                  [   "ENEMY ENTRY TOKEN",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, SQUARE ],
                    [POSITION_XY, [149.5,89.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 22, 40.5, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, t ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["ENEMY ENTRY"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                  [   "WEAPONS",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [0.5,131.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [3,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 24, 40, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["MG42","StG44","MP40"]]],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ], 
                  [   "EYE",
                    [
                    [ ENABLED_B,                t],
                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [77, 131.5]],
                    [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 37.5, 40, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "SPOTTED"],
                            [ LBL_SIZE,     4 ],
                            [ LBL_DEPTH, 1],
                            [ ROTATION, 90 ],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                        ]
                    ],
                    ]
                  ], 
                   [   "TRIANGLEs",
                    [
                    [ ENABLED_B,                t],

                    [CMP_SHAPE, FILLET ],
                    [CMP_FILLET_RADIUS, 5],
                    [POSITION_XY, [116, 131.5]],
                    [ CMP_PADDING_XY, [ 1.5, 0 ] ],
                    [CMP_NUM_COMPARTMENTS_XY,       [2,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [ 27, 40, 24.6]],
                    [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     [["ALARM","OBJECTIVE"]]],
                            [ LBL_SIZE,     4 ],
                            [ ROTATION, 90 ],
                            [ LBL_DEPTH, 1],
                            /*[ LBL_FONT, "Blockletter:style regular"],*/
                            
                        ]
                    ],
                    ]
                  ],  
                ]
            ]
        ]
    ],
    [   "CHIT BOX",
        [
            [ ENABLED_B,                t],
            [ BOX_SIZE_XYZ, [128.0, 105.0, 58.0] ], 
            [ BOX_LID, f],
            [ BOX_COMPONENTS,
                [
                    [   "box for coin-style chits",
                        [
                            [CMP_SHAPE, FILLET ],
                            [CMP_FILLET_RADIUS, 10],
                            [CMP_NUM_COMPARTMENTS_XY,       [1,1]],
                            [CMP_COMPARTMENT_SIZE_XYZ,      [ 124, 101, 56.0] ],
                            [ CMP_CUTOUT_SIDES_4B, [ f, f, f, f ] ],
                        
                        ]
                    ],
                    
                ]
            ]
        ]
    ],
];


MakeAll();