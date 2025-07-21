$fn=60;

//center
difference(){
cylinder(h=10,d=38.5);
translate([0,0,3])
cylinder(h=15,d=28.5);
cylinder(h=3,d=10);
}

//bot
translate([0,0,-18])
difference(){
cylinder(h=18,d=13);
cylinder(h=18,d=10);
}

//top
  difference(){
  translate([0,0,10])
  cylinder(h=3,d=46.5);
  translate([0,0,3])
  cylinder(h=15,d=28.5);
  }

  difference(){
  translate([0,0,13])
  cylinder(h=3,d=40.5);
  translate([0,0,3])
  cylinder(h=15,d=28.5);
  }

  translate([0, 0, 13])
  rotate_extrude(convexity = 10)
  translate([20.1, 0, 0])
  circle(r = 3, $fn = 100);
