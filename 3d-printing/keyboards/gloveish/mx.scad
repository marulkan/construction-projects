// Parameters
switch_length = 14;     // Modify these values with the actual dimensions
switch_width = 14;
switch_height = 4;

// Switch base module
module low_profile_switch_base() {
    cube([switch_length, switch_width, switch_height]);
}

// Uncomment and modify the following code if you need additional features like mounting holes or cutouts.

// // Mounting hole example
module mounting_hole() {
    difference() {
        cylinder(r=2, h=switch_height + 1, center=true);
        translate([switch_length/2, switch_width/2, -1])
            cylinder(r=1, h=switch_height + 2, center=true);
    }
}

// // Combine the switch base and mounting hole modules
module low_profile_switch_with_hole() {
    low_profile_switch_base();
    translate([switch_length/4, switch_width/4, 0])
        mounting_hole();
}

// Uncomment and modify the following code if you need additional features like cutouts or other elements.

// // Cutout example
module cutout() {
    translate([switch_length/3, switch_width/3, 0])
        cube([switch_length/3, switch_width/3, switch_height]);
}

// // Combine the switch base and cutout modules
module low_profile_switch_with_cutout() {
    low_profile_switch_base();
    cutout();
}

// Use the desired module to render the switch base
low_profile_switch_base(); // Uncomment this line to render the basic switch base

// low_profile_switch_with_hole(); // Uncomment this line to render the switch base with a mounting hole

// low_profile_switch_with_cutout(); // Uncomment this line to render the switch base with a
