// Esimerkki 1a: Yksinkertainen laatikko (z-välkyntää esintyy)

include <BOSL2/std.scad>
$align_msg=false;

box = [20, 30, 10];
wall = 2;

diff() {
  cube(box) {
    // inside=true asettaa tag("remove")
    align(TOP, inside=true) {
      cube(box - [2*wall, 2*wall, wall]);
      cube([box[0]-wall, box[1]-wall, 0.5*wall]);
    }
  }
}
