// Esimerkki 1c: Yksinkertainen laatikko (rakennettu tuubeista)

include <BOSL2/std.scad>
$align_msg=false;

box = [20, 30, 10];
wall = 2;
eps = 0.01;

cube([box[0], box[1], wall]) {
  position(BOTTOM) {
    rect_tube(box[2]-0.5*wall, [box[0], box[1]], wall=wall) {
      position(TOP) {
	rect_tube(0.5*wall, [box[0], box[1]], wall=0.5*wall);
      }
    }
  }
}
