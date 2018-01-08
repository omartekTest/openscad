nut_dia=19; //diameter nut

difference() {
  translate([0, 0, 0])
  import("5lobe_full.stl");


  for (i=[0:4]) {
  rotate([0,0,72*i])
  translate([0, -29, 0])
  cylinder(r=nut_dia/2, h=20, $fn=6, center=true);
  }

}
