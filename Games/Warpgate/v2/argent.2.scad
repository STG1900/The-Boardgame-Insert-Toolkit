 include <boardgame_insert_toolkit_lib.2.scad>;
 //285 x 285
 // determines whether lids are output.
g_b_print_lid = f;

// determines whether boxes are output.
g_b_print_box = t; 

// Focus on one box
g_isolated_print_box = "CARDS"; 

// Used to visualize how all of the boxes fit together.
g_b_visualization = f;
g_b_vis_actual = g_b_visualization && $preview;

// Turn off labels during preview. 
g_b_preview_no_labels = f;
g_b_no_labels_actual = g_b_preview_no_labels && $preview;

// Makes solid simple lids instead of the honeycomb ones.
// Might be faster to print. Definitely faster to render.
g_b_simple_lids = f;            

// default = 1.5
g_wall_thickness = 2; 
 data=
[   
["TILES",
[
[ BOX_SIZE_XYZ, [120, 120, 40.0] ],        
[ BOX_COMPONENT, 
[
[ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],               
[ CMP_COMPARTMENT_SIZE_XYZ, [ 116, 116, 38] ],  
[ CMP_CUTOUT_SIDES_4B, [ t, t, t, t ] ],   
[LABEL,
[
[ LBL_TEXT, "TILE" ],
[ LBL_SIZE,     12 ],
[ LBL_PLACEMENT, CENTER]
]
],
]
],
[ BOX_LID,
[
[ LID_INSET_B, [true]],
[ LID_HEIGHT, 6],
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
["TILESTOKEN",
[
[ BOX_SIZE_XYZ, [120, 120, 25] ],        
[ BOX_COMPONENT, 
[
[ CMP_NUM_COMPARTMENTS_XY, [2, 2] ],               
[ CMP_COMPARTMENT_SIZE_XYZ, [ 57, 57, 22] ],  
[ CMP_SHAPE, FILLET ],
]
],
[ BOX_LID,
[
[ LID_HEIGHT, 6],
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
["SPELLCARDS",
[
[BOX_SIZE_XYZ, [130,94,20]],
[BOX_COMPONENT,
[
[LABEL,
[
[ LBL_TEXT, "SPELLCARDS" ],
[ LBL_SIZE,     6 ],
[ LBL_PLACEMENT, CENTER]
]
],
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 125, 84, 17] ],  
[ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ],   
]
],
[ BOX_LID,
[
[ LID_HEIGHT, 6],
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
["TOKENS",
[
[BOX_SIZE_XYZ, [130,94,43]],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [2,1]],
[ CMP_SHAPE, FILLET ],
[ CMP_PADDING_XY, [ 2.5, 0 ] ],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 60, 88, 41] ],  
[LABEL,
[
[ LBL_TEXT,        
[   
["MANA", "COINS"],
]
],
[ LBL_SIZE,     8 ],
[ ROTATION,         10],
[ LBL_PLACEMENT, CENTER]
]
],
]
],
[ BOX_LID,
[
[ LID_INSET_B, [f]],
[ LID_HEIGHT, 6],
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
["CARDS",
[
[BOX_SIZE_XYZ, [120,96,65]],
[BOX_COMPONENT,
[
[ POSITION_XY, [ 1.2, CENTER ] ],
[ CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 34, 92, 63] ],
[ CMP_CUTOUT_SIDES_4B, [ f, f, f, t ] ]
]
],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ POSITION_XY, [ 38.4, CENTER ] ],//3
[ CMP_COMPARTMENT_SIZE_XYZ, [ 30, 92, 63] ],  
[ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ]
]
],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ POSITION_XY, [ 71.6, CENTER ] ],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 20, 92, 63] ],  
[ CMP_CUTOUT_SIDES_4B, [ f, f, t, t ] ]
]
],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ POSITION_XY, [ 94.8 , CENTER ] ],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 20, 92, 63] ],  
[ CMP_CUTOUT_SIDES_4B, [ f, f, t, f ] ]
]
]
]
],
["MAGES",
[
[BOX_SIZE_XYZ, [65,120,65]],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ CMP_SHAPE, FILLET ],
[ CMP_PADDING_XY, [ 2.5, 0 ] ],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 60, 115, 50] ],  
[LABEL,
[
[ LBL_TEXT, "MAGES" ],
[ LBL_SIZE,     12 ],
[ LBL_PLACEMENT, CENTER],
[ ROTATION, 90],
]
],
],
],
[ BOX_LID,
[
[ LID_HEIGHT, 6],
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
["PLAYERS",
[
[BOX_SIZE_XYZ, [94,165,20]],
[BOX_COMPONENT,
[
[CMP_NUM_COMPARTMENTS_XY, [1,1]],
[ CMP_PADDING_XY, [ 2.5, 0 ] ],
[ CMP_COMPARTMENT_SIZE_XYZ, [ 84, 140, 18] ],  
[LABEL,
[
[ LBL_TEXT, "PLAYER" ],
[ LBL_SIZE,     12 ],
[ LBL_PLACEMENT, CENTER],
[ LBL_DEPTH, 0.5 ]
]
]
]
],
[ BOX_LID,
[
[ LID_HEIGHT, 6],
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
];

 MakeAll();