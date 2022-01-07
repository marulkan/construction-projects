
shelf = [768, 300, 20];      // 48
beam = [2235, 310, 20];      // 6
cover = [768, 80, 20];       // 6

gameshelf = [950, 500, 20];  // 6
gamebeam = [1100, 510, 20];  // 3
gamecover = [950, 80, 20];   // 3

material = [2500, 1220, 19]; // 8

// Shelf boards (4 of them)
color("red") {
  cube(size = material);
}
translate([0, 0, 0]){
  cube(size = shelf);
}
translate([0, 304, 0]){
  cube(size = shelf);
}
translate([0, 608, 0]){
  cube(size = shelf);
}
translate([0, 608, 0]){
  cube(size = shelf);
}
translate([0, 912, 0]){
  cube(size = shelf);
}
translate([772, 0, 0]){
  translate([0, 0, 0]){
    cube(size = shelf);
  }
  translate([0, 304, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 912, 0]){
    cube(size = shelf);
  }
}
translate([1544, 0, 0]){
  translate([0, 0, 0]){
    cube(size = shelf);
  }
  translate([0, 304, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 912, 0]){
    cube(size = shelf);
  }
}

translate([2600, 0, 0]){
  color("red") {
    cube(size = material);
  }
  translate([0, 0, 0]){
    cube(size = shelf);
  }
  translate([0, 304, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 912, 0]){
    cube(size = shelf);
  }
  translate([772, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
  translate([1544, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
}

translate([2600, 1300, 0]){
  color("red") {
    cube(size = material);
  }
  translate([0, 0, 0]){
    cube(size = shelf);
  }
  translate([0, 304, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 912, 0]){
    cube(size = shelf);
  }
  translate([772, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
  translate([1544, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
}

translate([2600, 2600, 0]){
  color("red") {
    cube(size = material);
  }
  translate([0, 0, 0]){
    cube(size = shelf);
  }
  translate([0, 304, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 608, 0]){
    cube(size = shelf);
  }
  translate([0, 912, 0]){
    cube(size = shelf);
  }
  translate([772, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
  translate([1544, 0, 0]){
    translate([0, 0, 0]){
      cube(size = shelf);
    }
    translate([0, 304, 0]){
      cube(size = shelf);
    }
    translate([0, 608, 0]){
      cube(size = shelf);
    }
    translate([0, 912, 0]){
      cube(size = shelf);
    }
  }
}

// BEAMS
translate([0, 1300, 0]){
  color("red") {
    cube(size = material);
  }
  // beams
  translate([0, 0, 0]){
    cube(size = beam);
  }
  translate([0, 314, 0]){
    cube(size = beam);
  }
  translate([0, 628, 0]){
    cube(size = beam);
  }
  // covers
  translate([0, 942, 0]){
    cube(size = cover);
  }
  translate([0, 1026, 0]){
    cube(size = cover);
  }
  translate([0, 1110, 0]){
    cube(size = cover);
  }
  translate([772, 0, 0]){
    translate([0, 942, 0]){
      cube(size = cover);
    }
    translate([0, 1026, 0]){
      cube(size = cover);
    }
    translate([0, 1110, 0]){
      cube(size = cover);
    }
  }
  translate([1544, 0, 0]){
    translate([0, 942, 0]){
      cube(size = gamecover);
    }
    translate([0, 1026, 0]){
      cube(size = gamecover);
    }
    translate([0, 1110, 0]){
      cube(size = gamecover);
    }
  }
}

translate([2600, 3900, 0]){
  color("red") {
    cube(size = material);
  }
  // beams
  translate([0, 0, 0]){
    cube(size = beam);
  }
  translate([0, 314, 0]){
    cube(size = beam);
  }
  translate([0, 628, 0]){
    cube(size = beam);
  }
}

translate([0, 2600, 0]){
  color("red") {
    cube(size = material);
  }
  translate([0, 0, 0]){
    cube(size = gameshelf);
  }
  translate([0, 504, 0]){
    cube(size = gameshelf);
  }
  translate([954, 0, 0]){
    translate([0, 0, 0]){
      cube(size = gameshelf);
    }
    translate([0, 504, 0]){
      cube(size = gameshelf);
    }
  }
}

translate([0, 3900, 0]){
  color("red") {
    cube(size = material);
  }
  translate([0, 0, 0]){
    cube(size = gamebeam);
  }
  translate([0, 514, 0]){
    cube(size = gamebeam);
  }
  translate([1104, 0, 0]){
    translate([0, 0, 0]){
      cube(size = gamebeam);
    }
    translate([0, 514, 0]){
      cube(size = gameshelf);
    }
  }
}
