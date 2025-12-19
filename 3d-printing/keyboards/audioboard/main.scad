include <kailh.scad>
include <fixture.scad>

module row(){
  width_r1 = [0, 20, 40, 60];
  for (i = [0:3]){
    translate([width_r1[i], 0, 0])
    fixture(); 
    translate([width_r1[i], 0, 2.2])
    kailh_plate();
  }
}

module audio_knobs(){
cylinder(h=3,d=36);
cylinder(h=5,d=6);
}
audio_knob_placement = [0, 50, 100, 150, 200];

// Keypad
keypad_rows = [0,20,40];
translate([60,30,0])
for (i = [0:2]){
  translate([0,keypad_rows[i],0])
  row();
}
translate([60,210,0])
for (i = [0:2]){
  translate([0,keypad_rows[i],0])
  row();
}

module screen(){
  translate([-20,0,0]){
    cylinder(h=1,d=32.512);
    translate([0,0,1]){
      cylinder(h=5,d=36.5);
      translate([-28,-15,0])
      cube([20,30,5]);
    }
  }
  translate([25,0,4]){
    cube([35,55,4], center=true);
    cube([30,55,8], center=true);
    cube([35,48,8], center=true);
  }
}



// Base
color("blue")
difference(){
  cube([170, 300, 5]);
  //keypad cutout
  translate([60,30,0]){
    cube([80,60,5]);
    translate([-2.5,-2.5,3])
    cube([85,65,2]);
  }
  //keypad cutout 2
  translate([60,210,0]){
    cube([80,60,5]);
    translate([-2.5,-2.5,3])
    cube([85,65,2]);
  }
  // audio knobs
  translate([30,50,0])
  for (i = [0:4]){
    translate([0,audio_knob_placement[i],0])
  audio_knobs();
  }
  // screens
  translate([100,150,0])
  screen();
  // screw holes
  screw_vertical = [7, 170/2, 170-7];
  screw_horizontal = [7, 125, 175, 300-7];
  for (i = [0:2]) {
    translate([screw_vertical[i], screw_horizontal[0], 0]) 
    cylinder(h=5,d=3);
    translate([screw_vertical[i], screw_horizontal[3], 0]) 
    cylinder(h=5,d=3);
  }
  for (i = [1:2]) {
    translate([screw_vertical[0], screw_horizontal[i], 0]) 
    cylinder(h=5,d=3);
    translate([screw_vertical[2], screw_horizontal[i], 0]) 
    cylinder(h=5,d=3);
  }

}
