module body() {
for (i=[0:8]) {
  cube(size=[20, 10-i, 10+10*i], center=true);
}
}

module holes() {
for (i=[0:16]) {
translate ([0,0,-40+5*i])
rotate([90, 0, 0]) {
cylinder(r=2, h=20, center=true,$fn=20);
}
}
}

difference() {
  body();
  holes();
}
