// Variables so we can switch stuff around easier
drawing_offset = 310;

thickness = 20;

bookcase_beam_depth = 310;
bookcase_shelf_depth = 300;

bookcase_width = 768;
bookcase_height = 2235;

shelf_1 = 80;
shelf_2 = shelf_1 + thickness + 410;
shelf_3 = shelf_2 + thickness + 250;
shelf_4 = shelf_3 + thickness + 250;
shelf_5 = shelf_4 + thickness + 250;
shelf_6 = shelf_5 + thickness + 250;
shelf_7 = shelf_6 + thickness + 250;
shelf_8 = shelf_7 + thickness + 250;

gameshelf_depth = 500;
gameshelf_beam_depth = 510;

gameshelf_width = 950;
gameshelf_height = 1100;

gameshelf_1 = 80;
gameshelf_2 = 590;

wall_height = 2235;
wall_1_width = 3942;
wall_2_width = 3748;

window_height = 633;
window_1_width = 1155;
window_2_width = 1275;
window_distance_between = 238;

// wall 1 3942 x 2230
translate([0, drawing_offset, 0]) {
    color("white"){cube(size = [wall_1_width, 1, wall_height], center = false);}
}
// wall w windows 3748 x 2230
translate([wall_1_width, drawing_offset - wall_2_width, 0]) {
    color("white"){cube(size = [1, wall_2_width, wall_height], center = false);}
}
// window 2
translate([wall_1_width - 10, drawing_offset + window_distance_between + window_1_width - wall_2_width, wall_height - window_height]) {
    color("blue"){cube(size = [20, window_2_width, window_height], center = false);}
}

// window 1
translate([wall_1_width - 10, drawing_offset - wall_2_width, wall_height - window_height]) {
    color("blue"){cube(size = [20, window_1_width, window_height], center = false);}
}

module shelf(pos){
    translate([20, 10, pos]){
        cube(size = [bookcase_width, bookcase_shelf_depth, thickness], center = false);
    }
}

module bookshelf(pos){
    translate([pos, 0, 0]){
        //beam
        cube(size = [thickness, bookcase_beam_depth, bookcase_height], center = false);
        // bottom cover
        translate([20, 30, 0]){
            cube(size = [bookcase_width, thickness, 80], center = false);
        }
        // top cover
        translate([20, 30, bookcase_height - 80]){
            cube(size = [bookcase_width, thickness, 80], center = false);
        }
        // shelfs
        shelf(shelf_1);
        shelf(shelf_2);
        shelf(shelf_3);
        shelf(shelf_4);
        shelf(shelf_5);
        shelf(shelf_6);
        shelf(shelf_7);
        shelf(shelf_8);
    }
}

bookshelf(0);
bookshelf(bookcase_width + thickness);
bookshelf(2*(bookcase_width + thickness));
bookshelf(3*(bookcase_width + thickness));
bookshelf(4*(bookcase_width + thickness));

// Wall 2 (with windows)

// bookshelf in the corner, lazy switcharoo since it's just a mindmap
translate([wall_1_width, bookcase_beam_depth - 900, 0]){
    rotate(a=[0,0,90]){
        translate([20, 270, 0]){
            cube(size = [bookcase_width, thickness, 80], center = false);
        }
        translate([20, 270, bookcase_height - 80]){
            cube(size = [bookcase_width, thickness, 80], center = false);
        }
        bookshelf(0);
    }
}


module gameshelf(pos){
    translate([wall_1_width - gameshelf_beam_depth, bookcase_beam_depth - 900 - pos, 0]){
        // beam
        cube(size = [gameshelf_beam_depth, thickness, gameshelf_height], center = false);
        // shelf 1
        translate([10, 20, 80]){
            cube(size = [gameshelf_depth, gameshelf_width, thickness], center = false);
        }
        // shelf 2
        translate([10, 20, 590]){
            cube(size = [gameshelf_depth, gameshelf_width, thickness], center = false);
        }
        // bottom cover
        translate([30, 20, 0]){
            cube(size = [thickness, gameshelf_width, 80], center = false);
        }
        // horizontal beams for tabletop
        translate([10, 20, gameshelf_height - thickness]){
            cube(size = [45, gameshelf_width, thickness], center = false);
        }
        translate([210, 20, gameshelf_height - thickness]){
            cube(size = [45, gameshelf_width, thickness], center = false);
        }
        translate([460, 20, gameshelf_height - thickness]){
            cube(size = [45, gameshelf_width, thickness], center = false);
        }
    }
}

module roundedgameshelf(pos){
    translate([wall_1_width - gameshelf_beam_depth, bookcase_beam_depth - 900 - pos, 0]){
        // beam
        cube(size = [gameshelf_beam_depth, thickness, gameshelf_height], center = false);
        // shelf 1 with rounded corner
        translate([10, 20, gameshelf_1]){
            difference(){
                cube(size = [gameshelf_depth, 930, thickness], center = false);
                translate([0,930,-1]){
                    cylinder(h=22,r=100);
                }
            }
            translate([100,830,0]){
                cylinder(h=thickness,r=100);
            }
        }
        // shelf 2 with rounded corner
        translate([10, 20, gameshelf_2]){
            difference(){
                cube(size = [gameshelf_depth, 930, thickness], center = false);
                translate([0,930,-1]){
                    cylinder(h=22,r=100);
                }
            }
            translate([100,830,0]){
                cylinder(h=thickness,r=100);
            }
        }
        // horizontal beams for tabletop
        translate([210, 20, gameshelf_height - thickness]){
            cube(size = [45, 930, thickness], center = false);
        }
        translate([460, 20, gameshelf_height - thickness]){
            cube(size = [45, 930, thickness], center = false);
        }
    }
}

roundedgameshelf(wall_2_width - 2800);
gameshelf(wall_2_width - 1850);
gameshelf(wall_2_width - 900);

// Notes

// Measurements
// 48 st 768x300 shelf                       Cost: 4 full sheats
// 6 st 2235x310 shelf beams                 Cost: 2 sheats, rest of wood should be used for trims/cover_top/bottom (will cover 18 pieces of trim)
// 3 st 1100x510 game shelf beams            Cost: 1 sheat, last cutout will be trimmed to gameshelf, cuttoffs will be glued to last game shelf
// 6 st 950x500  game shelf                  Cost: 1 sheat, cuttoffs will be glued to last game shelf.

// Material
// 8 st 2500 x 1220 

