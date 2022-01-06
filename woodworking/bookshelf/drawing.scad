// wall 3942 x 2230
translate([0, 310, 0]) {
    color("white"){cube(size = [3942, 1, 2235], center = false);}
}
// wall w windows 3748 x 2230
translate([3942, 310 - 3748, 0]) {
    color("white"){cube(size = [1, 3748, 2235], center = false);}
}
// window 1
translate([3932, 310 + 238 + 1155 - 3748, 2235 - 633]) {
    color("blue"){cube(size = [20, 1275, 633], center = false);}
}

// window 2
translate([3932, 310 - 3748, 2235 - 633]) {
    color("blue"){cube(size = [20, 1155, 633], center = false);}
}


// Wall 1
shelf_1 = 80;
shelf_2 = shelf_1 + 20 + 410;
shelf_3 = shelf_2 + 20 + 250;
shelf_4 = shelf_3 + 20 + 250;
shelf_5 = shelf_4 + 20 + 250;
shelf_6 = shelf_5 + 20 + 250;
shelf_7 = shelf_6 + 20 + 250;
shelf_8 = shelf_7 + 20 + 250;

module beam(){
    cube(size = [20, 310, 2235], center = false);
}

module shelf(pos){
    translate([20, 10, pos]){
        cube(size = [768, 300, 20], center = false);
    }
}

module cover_top(){
    translate([20, 30, 2235 - 80]){
        cube(size = [768, 20, 80], center = false);
    }
}

module cover_bottom(){
    translate([20, 30, 0]){
        cube(size = [768, 20, 80], center = false);
    }
}


module bookshelf(pos){
    translate([pos, 0, 0]){
        beam();
        cover_bottom();
        shelf(shelf_1);
        shelf(shelf_2);
        shelf(shelf_3);
        shelf(shelf_4);
        shelf(shelf_5);
        shelf(shelf_6);
        shelf(shelf_7);
        shelf(shelf_8);
        cover_top();
    }
}

bookshelf(0);
bookshelf(788);
bookshelf(1576);
bookshelf(2364);
bookshelf(3152); // Change to sliced corner?


// Wall 2

translate([3942, 310 - 900, 0]){
    rotate(a=[0,0,90]){
        translate([20, 270, 0]){
            cube(size = [768, 20, 80], center = false);
        }
        translate([20, 270, 2235 - 80]){
            cube(size = [768, 20, 80], center = false);
        }
        bookshelf(0);
    }
}


module game_beam(){
    cube(size = [510, 20, 1100], center = false);
}

module game_shelf(pos){
    translate([10, 20, pos]){
        cube(size = [500, 950, 20], center = false);
    }
}

module game_cover_bottom(){
    translate([30, 20, 0]){
        cube(size = [20, 950, 80], center = false);
    }
}

module horizontal_game_beam(){
    translate([10, 20, 1100 - 20]){
        cube(size = [45, 950, 20], center = false);
    }
    translate([210, 20, 1100 - 20]){
        cube(size = [45, 950, 20], center = false);
    }
    translate([460, 20, 1100 - 20]){
        cube(size = [45, 950, 20], center = false);
    }
}

module gameshelf(pos){
    translate([3942 - 510, 310 - 900 - pos, 0]){
        game_beam();
        game_shelf(80);
        game_shelf(590);
        game_cover_bottom();
        horizontal_game_beam();
    }
}

module roundedgameshelf(pos){
    translate([3942 - 510, 310 - 900 - pos, 0]){
        game_beam();
        translate([210, 20, 1100 - 20]){
            cube(size = [45, 930, 20], center = false);
        }
        translate([460, 20, 1100 - 20]){
            cube(size = [45, 930, 20], center = false);
        }
        translate([10, 20, 80]){
            difference(){
                cube(size = [500, 930, 20], center = false);
                translate([0,930,-1]){
                    cylinder(h=22,r=100);
                }
            }
            translate([100,830,0]){
                cylinder(h=20,r=100);
            }
        }
        translate([10, 20, 590]){
            difference(){
                cube(size = [500, 930, 20], center = false);
                translate([0,930,-1]){
                    cylinder(h=22,r=100);
                }
            }
            translate([100,830,0]){
                cylinder(h=20,r=100);
            }
        }
    }
}

roundedgameshelf(3748 - 2800);
gameshelf(3748 - 1850);
gameshelf(3748 - 900);
