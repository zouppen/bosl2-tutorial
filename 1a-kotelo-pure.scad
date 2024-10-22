// Esimerkki 1a: Yksinkertainen laatikko (z-välkyntää esintyy)

box = [20, 30, 10];
wall = 2;

difference() {
  cube(box);
  translate([wall, wall, wall]) {
    cube(box - [2*wall, 2*wall, wall]);
  }
  translate([0.5*wall, 0.5*wall, box[2]-0.5*wall]) {
    cube([box[0]-wall, box[1]-wall, 0.5*wall]);
  }
}
