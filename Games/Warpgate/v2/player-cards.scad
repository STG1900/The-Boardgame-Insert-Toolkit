include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = false;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
g_isolated_print_box = "player"; 

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
    [   "player",
        [
            [ LID_INSET_B, f],
            [ BOX_NO_LID_B, t],
            [ LID_NOTCHES_B, f ],

            [ BOX_SIZE_XYZ,         [18, 71, 96.0] ],

            [ BOX_COMPONENT,
                [
                    [ POSITION_XY, [ 0, CENTER ] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 8, 68, 94.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],
                    [CMP_CUTOUT_SIDES_4B,       [f,f,t,f]], // ??
                    [ CMP_CUTOUT_HEIGHT_PCT, 60 ],
                    [ CMP_CUTOUT_WIDTH_PCT, 40 ],
                    //[ CMP_CUTOUT_TYPE, EXTERIOR ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ POSITION_XY, [ 9, CENTER ] ],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 6, 68, 94.0] ],
                    [CMP_NUM_COMPARTMENTS_XY,   [1,1]],

                ]
            ],

            [ BOX_LID,
                [
                    [ LID_FIT_UNDER_B,      f],
                    [ LID_CUTOUT_SIDES_4B, [f,f,f,f]],
                    [ LID_SOLID_B, t],
                    [ LID_HEIGHT, 0 ],
                ],
            ],
        ],
    ],
];


MakeAll();