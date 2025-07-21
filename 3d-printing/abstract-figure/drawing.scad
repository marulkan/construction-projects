$fn=100;


// difference count:




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


// 44 / 7

// 4.5
//for (i = )
INC=53;
difference() {
translate([-10, 0, INC]) cube([20, 60, 20], center=true);
translate([-19, 0, INC]) cube([3, 58, 18], center=true);
}
translate([-18, 5, INC]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(2) text("1", 14);

difference() {
translate([-10, 0, INC*2]) cube([20, 80, 20], center=true);
translate([-19, 0, INC*2]) cube([3, 78, 18], center=true);
}

difference() {
translate([-10, 0, INC*3]) cube([20, 100, 20], center=true);
translate([-19, 0, INC*3]) cube([3, 98, 18], center=true);
}

difference() {
translate([-10, 0, INC*4]) cube([20, 120, 20], center=true);
translate([-19, 0, INC*4]) cube([3, 118, 18], center=true);
}

difference() {
translate([-10, 0, INC*5]) cube([20, 100, 20], center=true);
translate([-19, 0, INC*5]) cube([3, 98, 18], center=true);
}

difference() {
translate([-10, 0, INC*6]) cube([20, 80, 20], center=true);
translate([-19, 0, INC*6]) cube([3, 78, 18], center=true);
}

difference() {
translate([-10, 0, INC*7]) cube([20, 60, 20], center=true);
translate([-19, 0, INC*7]) cube([3, 58, 18], center=true);
}


//flower
// cylinder spoke (2)
// cylinder flowers

// spokes
translate([0, 55, 465]) rotate([60,0,0]) cylinder(h=120, r=10);
translate([0, -55, 465]) rotate([-60,0,0]) cylinder(h=120, r=10);



//flowers
//left meditate: f117b rainbow: eb19 x3
difference() {
translate([-20, 47, 522]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, 47, 522]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-15, 59, 502]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\U0f117b", font = "Iosevka Nerd Font", size = 24);
rotate([90,0,90])translate([46.5, 520, -20]) {
rotate_extrude(angle=180, convexity=10)translate([10, 0]) circle(1);
rotate_extrude(angle=180, convexity=10)translate([14, 0]) circle(1);
rotate_extrude(angle=180, convexity=10)translate([18, 0]) circle(1);
};

// left family: male: f183, female: f182 child f1ae
difference() {
translate([-20, 47, 468]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, 47, 468]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
difference(){
translate([-15, 60, 458]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\uf183", font = "Iosevka Nerd Font", size = 20);
translate([-16, 54, 456]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(6) text("\uf1ae", font = "Iosevka Nerd Font", size = 16);
}
difference() {
translate([-15, 52, 458]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\uf182", font = "Iosevka Nerd Font", size = 20);
translate([-16, 54, 456]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(6) text("\uf1ae", font = "Iosevka Nerd Font", size = 16);
}

//center-top man with cogs
difference() {
translate([-20, 0, 549]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, 0, 549]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-15, -4, 562]) rotate(a=270, v=[0,1,0]) rotate([0,0,-270]) linear_extrude(5) text("\uf085", font = "Iosevka Nerd Font", size = 12);
translate([-15, 9, 529]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\uf007", font = "Iosevka Nerd Font", size = 18);


// 6 pointed star center-center
difference() {
translate([-20, 0, 495]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, 0, 495]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-15, 11.5, 487]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\U0f0ae4", font = "Iosevka Nerd Font", size = 20);
translate([-20, 11.5, 500]) rotate(a=90, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("\U0f0ae4", font = "Iosevka Nerd Font", size = 20);
//translate([-15, 8, 485]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("£", 20);

// sterling sign center-bottom
difference() {
translate([-20, 0, 441]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, 0, 441]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-15, 8, 431]) rotate(a=270, v=[0,1,0]) rotate([0,0,-90]) linear_extrude(5) text("£", 20);

// hearth right top
difference() {
translate([-20, -47, 522]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, -47, 522]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-20, -57, 512]) rotate(a=90, v=[0,1,0]) rotate([0,0,-270]) linear_extrude(5) text("\u2665", font = "Iosevka Nerd Font", size = 20);

// runner right bottom
difference() {
translate([-20, -47, 468]) rotate(a=90, v=[0,1,0]) cylinder(h=20, r=27);
translate([-21, -47, 468]) rotate(a=90, v=[0,1,0]) cylinder(h=5, r=25);
}
translate([-20, -57, 458]) rotate(a=90, v=[0,1,0]) rotate([0,0,-270]) linear_extrude(5) text("\U0f070e", font = "Iosevka Nerd Font", size = 20);
//font-0 = "Iosevka Nerd Font:size=14;1"
