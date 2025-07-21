$fn=60;

module structure(){
  cylinder(h=23,d=13);
  translate([0,-6.5,0]) {
    cube([8,13,23]);
  }
  sphere(d=13);
  rotate([0,90,0]){
    cylinder(h=8,d=13);
  }
}

difference(){
  structure();
  rotate([0,90,0]){
    translate([-.5,0,-3])
    cylinder(h=11,d=6.5);
  }
  translate([.5,0,5])
  cylinder(h=18,d=6);
}
