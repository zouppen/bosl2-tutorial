// Esimerkki 1b: Yksinkertainen laatikko (z-välkyntä estetty)

include <BOSL2/std.scad>
$align_msg=false;

box = [20, 30, 10];
wall = 2;
eps = 0.01;

diff() {
  cube(box) {
    // Kasvata sisäosien korkeutta epsilonilla
    // (käytännössä ei tarpeen tällainen tarkkuus)
    align(TOP, inside=true, shiftout=eps) {
      cube(box - [2*wall, 2*wall, wall-eps]);
      cube([box[0]-wall, box[1]-wall, 0.5*wall+eps]);
    }
  }
}
