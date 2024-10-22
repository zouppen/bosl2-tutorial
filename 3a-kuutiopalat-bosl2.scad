// Esimerkki 3a: Kuutiopalat

include <BOSL2/std.scad>
$align_msg=false;

cube_size = 50;
wall = 4;
chamfer = 2;
peekhole_d = 20;
peekhole_chamfer = 1;
cut_size = 5;
cut_plane = back(7)*zrot(10)*xrot(30);
eps = 0.01;

module kurkistuskuutio() {
  // Tägit saa olla mielivaltaisessa järjestyksessä toisin kuin
  // difference():ssä
  diff() {
    // Täytetty kuutio
    cuboid(cube_size, chamfer=chamfer, edges=[TOP, "Z"]) {
      // Kurkistusaukot kahdella sivulla
      for (side = [FWD, LEFT]) {
	attach(side, BOTTOM, inside=true, shiftout=eps) {
	  // Chamfer voi olla negatiivinen, jolloin reunat
	  // kääntyvät ulospäin.
	  cyl(h=wall+2*eps, d=peekhole_d, chamfer=-peekhole_chamfer, anchor=TOP, $fn=40);
	}
      }
    }
    // Tee kuutiosta ontto
    tag("remove") {
      cuboid(cube_size-2*wall);
    }
  }
}

multmatrix(matrix_inverse(cut_plane)) {
  // Tärkeää määritellä leikkauskuvio tarpeeksi suureksi, BOSL2:n
  // oletus on 100.
  partition(cutpath="jigsaw", cutsize=cut_size, size = 500) {
    multmatrix(cut_plane) {
      kurkistuskuutio();
    }
  }
}
