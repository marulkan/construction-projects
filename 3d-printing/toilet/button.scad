
$fn=60;

module button(){
  cylinder(h=7,d=28);
  translate([0,0,-13])
  cylinder(h=13,d=9);
}

difference(){
  button();
  translate([-12.5,-8.5,6])
  linear_extrude(1)
  text("\uf1d1", font = "Iosevka Nerd Font", size = 18);
}
