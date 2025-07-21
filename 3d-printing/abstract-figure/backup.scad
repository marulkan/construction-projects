$fn=100;
//stamm
cylinder(h=55, r=1);
//fot
cylinder(h=1, r=10);
//topp
//translate([0, 0, 22]) {cylinder(h=1, r=6);};

//upper circle
rotate(a=95, v=[0,90,0])translate([-11.5,0,]) {
rotate_extrude(angle=180, convexity=10)
   translate([10, 0]) circle(1);
};

//lower circle
rotate(a=85, v=[0,90,0])translate([-31.2,0,3.75]) {
rotate_extrude(angle=-180, convexity=10)
   translate([10, 0]) circle(1);
};


// 44 / 7

// 4.5
//for (i = )
INC=5.5;
translate([-1, 0, INC]) cube([2, 6, 2], center=true);
translate([-1, 0, INC*2]) cube([2, 8, 2], center=true);
translate([-1, 0, INC*3]) cube([2, 10, 2], center=true);
translate([-1, 0, INC*4]) cube([2, 12, 2], center=true);
translate([-1, 0, INC*5]) cube([2, 10, 2], center=true);
translate([-1, 0, INC*6]) cube([2, 8, 2], center=true);
translate([-1, 0, INC*7]) cube([2, 6, 2], center=true);


//flower
// cylinder spoke (2)
// cylinder flowers

// spokes
translate([0, 5.5, 46.5]) rotate([60,0,0]) cylinder(h=12, r=1);
translate([0, -5.5, 46.5]) rotate([-60,0,0]) cylinder(h=12, r=1);

//flowers
//left
translate([-2, 4.7, 52.2]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);
translate([-2, 4.7, 46.8]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);

//center
translate([-2, 0, 54.9]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);
translate([-2, 0, 49.5]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);
translate([-2, 0, 44.1]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);

//right
translate([-2, -4.7, 52.2]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);
translate([-2, -4.7, 46.8]) rotate(a=90, v=[0,1,0]) cylinder(h=2, r=2.7);
