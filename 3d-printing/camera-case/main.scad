include <threads.scad>


// difference(){
//   metric_thread(diameter=107, pitch=6.5, thread_size=5.5, length=14, square=true, leadin=0, internal=false);
//   cylinder(r=49,h=14, $fn=100);
// }
// translate([0,0,2.5]){
//   cube([100,5,5], center=true);
// }

// Inte
difference(){
  cylinder(r=58,h=14, $fn=100);
  metric_thread(diameter=107, pitch=6.5, thread_size=6, length=14, square=true, internal=true);
}
