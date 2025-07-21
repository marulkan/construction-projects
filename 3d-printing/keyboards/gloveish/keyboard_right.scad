include <fixture.scad>
include <kailh.scad>


module rows(){
  // Row1
  angle_r1 = [0, 10, 25, 45, 47, 50];
  height_r1 = [3.5, 7, 17, 35.5, 38, 42.5];
  width_r1 = [1, 19, 36, 47, 65, 82];
  for (i = [0:5]){
    rotate([0, angle_r1[i], 0])
    translate([width_r1[i], 0, height_r1[i]])
    fixture(); 
    rotate([0, angle_r1[i], 0])
    translate([width_r1[i], 0, height_r1[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Row2
  angle_r2 = [0, 10, 25, 45, 47, 50];
  height_r2 = [3.5, 7, 17, 35.5, 38, 42.5];
  //width_r2 = [1, 20, 37, 49, 67, 84];
  width_r2 = [1, 19, 36, 47, 65, 82];
  translate([0,19,-2])
  rotate([0,-2,0])
  for (i = [0:5]){
    rotate([0, angle_r2[i], 0])
    translate([width_r2[i], 0, height_r2[i]])
    fixture(); 
    rotate([0, angle_r2[i], 0])
    translate([width_r2[i], 0, height_r2[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Row3
  angle_r3 = [5, 20, 35, 45, 55, 65];
  height_r3 = [0, 5, 15.2, 25.0, 37.5, 52];
  width_r3 = [0, 19.5, 37, 53, 67, 79.5];
  translate([5,38,-3])
  rotate([0,-10,0])
  for (i = [0:5]){
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]])
    fixture(); 
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Row4
  translate([6,57,-1])
  rotate([0,-10,0])
  for (i = [0:5]){
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]])
    fixture(); 
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Row5
  translate([5,76,-3])
  rotate([-8,-10,5.2])
  for (i = [0:5]){
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]])
    fixture(); 
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Row6
  translate([22,96,-4.5])
  rotate([-20.5,2.5,10])
  for (i = [0:3]){
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]])
    fixture(); 
    rotate([0, angle_r3[i], 0])
    translate([width_r3[i], 0, height_r3[i]+2.2])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }
}


// Thumb row 1
module thumb() {
  angle_t1 = [0, 15, 30];
  height_t1 = [2, -3, -13];
  width_t1 = [0, 17.5, 33];
  translate([1,113,-6])
  rotate([20,-25,124])
  for (i = [0:2]){
    rotate([0, 0, angle_t1[i]])
    translate([width_t1[i], height_t1[i], 0])
    rotate([0,0,-90])
    fixture(); 
    rotate([0, 0, angle_t1[i]])
    translate([width_t1[i], height_t1[i], 2.2])
    rotate([0,0,-90])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }

  // Thumb row 2
  angle_t2 = [0, 15, 30];
  height_t2 = [0, -5, -14];
  width_t2 = [0, 16.5, 31];
  translate([-10, 92,-0])
  rotate([20,-25,120])
  for (i = [0:2]){
    rotate([0, 0, angle_t2[i]])
    translate([width_t2[i], height_t2[i], 0])
    rotate([0,0,-90])
    fixture(); 
    rotate([0, 0, angle_t2[i]])
    translate([width_t2[i], height_t2[i], 2.2])
    rotate([0,0,-90])
    mirror([0,1,0])
    translate([0,-20,0])
    kailh_plate();
  }
}


//End bits
//Row 1
module panel_bits() {
  translate([113,01,-64.3])
  bit(3,20);
  //Row 2
  translate([114.5,20,-62.8])
  bit(1,20);
  //Row 3
  translate([114.1,39,-63.2])
  bit(1.5,12.9);
  //Row 4
  translate([115.9,58,-61.4])
  bit(1.5,13.3);
  //Row 5
  translate([116.6,76.5,-61.2])
  rotate([-8,-10,5.2])
  bit(3,13.8);
  //Row 6
  translate([115.6,92.8,-63.0])
  rotate([-20.5,2.5,10])
  bit(3,34.8);

  //Start bits
  //Row 1
  translate([0,1,4.4])
  rotate([0,-45,0])
  bit(0,5);
  //Row 2
  translate([-4,38,2.5])
  rotate([0,-45,180])
  bit(2,4.9);
  //Row 3
  translate([-4,57,-2.2])
  rotate([0,-45,180])
  bit(6.7,9);
  //Row 4
  translate([-4,76,-0.2])
  rotate([0,-45,180])
  bit(4.7,10);

}


//Row 5
module pole(){
  translate([45.5,150,-28])
  rotate([-8,11,5.2])
  rotate([0,-25,130])
  cube([20,180,30]);
}

module row5bit() {
  translate([-3.6,94,-6])
  rotate([-8,-10,5.2])
  rotate([0,-45,180])
  bit(8.5,7.5);
}


module row6bit() {
  translate([-8,109,-6.3])
  rotate([-21,8,10.5])
  rotate([0,-45,180])
  bit(2.7,28);
}

module thumb_binder(){
  translate([20,112.5,-7])
  rotate([20,-25,124])
  cube([12,22,5]);
}


//Left side
//Right Side
//Thumbs
/*
translate([3,82,-2])
rotate([5,5,45])
cube([7,80,8]);

translate([40,115,-10])
rotate([5,5,50])
cube([7,95,8]);

translate([-52,140,-10])
rotate([0,7,60])
translate([-3,0,13])
cube([50,7,8]);
*/

module board(){
  rows();
  thumb_binder();
  translate([0,-5,10])
  thumb();
  difference() {
    row5bit();
    rotate([0,-22,0])
    pole();
  }
  difference() {
    row6bit();
    rotate([0,-22,0])
    pole();
  }
  panel_bits();
}

module left_support_bracket(){
  translate([3.5,8.5,20.5])
  rotate([0, 20, -6])
  cube([131,3,10]);
}
module right_support_bracket(){
  translate([9,82.5,16.5]) {
  rotate([0, 20, -6]) {
  difference(){
    cube([131,3,10]);
    translate([80,0,5])
    cube([23,4,5]);
  }
  difference(){
    translate([0,-30,10])
    cube([131,33,3]);
    translate([0,-20,10])
    translate([80,16,0])
    cube([23,7,5]);
    translate([0,-20,10])
    translate([86,7,0])
    cube([12,10,5]);
    
  }
  }}
}


left_support_bracket();
right_support_bracket();

rotate([-10,0,0])
board();



difference(){
translate([-11,9,-16])
rotate([0.6, 20, -4])
cube([3,80,50]);
rotate([-10,0,0])
board();
left_support_bracket();
right_support_bracket();
}



difference(){
translate([104,-3,-80])
rotate([0, 20, -6])
cube([3,100,70.5]);
rotate([-10,0,0])
board();
left_support_bracket();
right_support_bracket();
}

