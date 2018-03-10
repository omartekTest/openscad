hull() {
cylinder(r=10, h=0.1, center=true,$fn=4);

translate([0, 0, 100]) {
  cylinder(r=2, h=0.01, center=true,$fn=20);
}
}
