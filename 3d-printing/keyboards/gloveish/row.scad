include <kailh.scad>

module key_row_6(){
  key_angle = [16, 40, 65, 85, 85, 85];
  key_height = [0, 8, 24, 41.5, 41.5, 41.5];
  key_width = [0, 19.5, 34, 44, 64, 84];
  for (i = [0:5]){
    rotate([0, key_angle[i], 0])
    translate([key_width[i], 0, key_height[i]])
    kailh_plate();
    rotate([0, key_angle[i], 0])
    translate([key_width[i]-3, 0, key_height[i]+0.5])
    cube([3,20,2]);
  }
}

module key_row_4(){

}

// Create thumb cluster
module thumb_cluster(){

}
