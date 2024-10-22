// Esimerkki 2a: Pirra

include <BOSL2/std.scad>
$align_msg=false;

// Kokonaisleveys ja -korkeus
pirra_h = 44;
pirra_d = 23;

// Kärkikulma
tip_angle = 43;

// Kahvan korkeus ja halkaisija
handle_h = 16;
handle_d = 5;

intersect() {
  cyl(h=pirra_h-handle_h, d=pirra_d, anchor=BOTTOM, $fn=6) {
    align(TOP) {
      cyl(h=handle_h, d=handle_d, $fn=50);
    }
    position(BOTTOM) {
      tag("intersect") {
	cyl(h=pirra_h, r1=0, r2=tan(tip_angle)*pirra_h, anchor=BOTTOM, $fn=50);
      }
    }
  }
}
