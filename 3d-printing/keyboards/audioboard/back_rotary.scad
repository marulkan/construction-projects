
$fn=60;

module holes(){
  cylinder(h=2,d=2.7);
  translate([0,13,0])
  cylinder(h=2,d=2.7);

}

difference(){
  cube([9,245,2]);
  translate([4.5,0,0]) {
  translate([0,15.5,0]) holes();
  translate([0,15.5+15+35.5,0]) holes();
  translate([0,15.5+15*2+35.5*2,0]) holes();
  translate([0,15.5+15*3+35.5*3,0]) holes();
  translate([0,15.1+15*4+35.5*4,0]) holes();
  }

}
translate([0,0,2]){
  difference(){
    cube([9,14.5,20]);
    translate([4.5,12,2])
    cylinder(h=18,d=2.7);
  }

  translate([0,14.5+15,0])
  difference(){
    cube([9,35.5,20]);
    translate([4.5,32,2])
    cylinder(h=18,d=2.7);
  }

  translate([0,14.5+15*2+35.5,0])
  difference(){
    cube([9,35.5,20]);
    translate([4.5,31,2])
    cylinder(h=18,d=2.7);
  }

  translate([0,14.5+15*3+35.5*2,0])
  difference(){
    cube([9,35.5,20]);
    translate([4.5,5,2])
    cylinder(h=18,d=2.7);
  }

  translate([0,14.5+15*4+35.5*3,0])
  difference(){
    cube([9,35.5,20]);
    translate([4.5,4,2])
    cylinder(h=18,d=2.7);
  }

  translate([0,14.5*2+15*4+35.5*4,0])
  difference(){
    cube([9,14,20]);
    translate([4.5,4.5,2])
    cylinder(h=18,d=2.7);
  }
}
