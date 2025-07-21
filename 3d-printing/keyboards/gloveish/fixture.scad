module fixture(){
  difference(){
    translate([-0.5,0.5,0])
    cube([21,19,1.3+0.9+3]);
    translate([(20-13.8)/2,(20-13.8)/2,0])
    cube([13.8,13.8,1.3]);
    translate([(20-14.5)/2,(20-14.5)/2,1.3])
    cube([14.5,14.5,0.9]);
    translate([0,0,1.3+0.9])
    cube([20,20,3]);
  }
}


module bit(length, height){
  rotate([0,45,0]){
    translate([-height, 0, 0])
    rotate([0,-90,0])
    rotate(180, [01,01,00])
    difference(){
      translate([-0.5,-1,0.5])
      prism(19, length, height);
    }
    translate([-height+.5, -0.5, length-1])
    cube([height,19,3]);
  }
}


module prism(l, w, h){
      polyhedron(//pt 0        1        2        3        4        5
              points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
              faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
}
