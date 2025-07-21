
$fn=100;


INC=53;

difference(){

// sterling sign center-bottom
difference() {
translate([-20, 0, 441]) rotate(a=90, v=[0,1,0]) cylinder(h=4, r=25);
translate([-15, 8, 431]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(7) text("£", 20);
}
//stem
cylinder(h=550, r=10);
//fot
cylinder(h=3, r=100);

//lower half circle
rotate(a=95, v=[0,90,0])translate([-110.5,0,]) {
rotate_extrude(angle=180, convexity=10)
   translate([100, 0]) circle(10);
};

//upper half circle
rotate(a=85, v=[0,90,0])translate([-307.2,0,36.75]) {
rotate_extrude(angle=-180, convexity=10)
   translate([100, 0]) circle(10);
};

}

/*
difference() {
translate([-19, 0, INC*2]) cube([2.1, 76, 16], center=true);
translate([-17, 5, INC*2-7]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("2", 14);
}

difference() {
translate([-10, 0, INC]) cube([20, 60, 20], center=true);
translate([-19, 0, INC]) cube([3, 56, 16], center=true);
}
translate([-18, 5, INC-7]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(2) text("1", 14);
*/
