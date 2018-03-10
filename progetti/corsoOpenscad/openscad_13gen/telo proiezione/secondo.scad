module cilindro(r,h,sp) {
difference() {
cylinder(r=r, h=h, center=true);
translate([0, 0, 2])
cylinder(r=r-sp, h=h, center=true);
}
}

module part1(r1,r2) {
difference() {
  cilindro(r1,h,sp);
  translate([-70, -150, -20])
  cube(size=[140, 130, 60], center=false);
  translate([-70, 20, -20])
  cube(size=[140, 130, 60], center=false);
}

difference() {
  cilindro(r2,h,sp);
  translate([-45, -20, -13])
  cube(size=[90, 40, 60], center=false);
  translate([-10, -150, 0])
  cube(size=[20, 150, 20], center=false);
}
}

r1=65;
r2=45;
h=30;
sp=2;

//projection(cut=true)
part1(r1,r2);     // pezzo con 4 pareti tonde


intersection() { //parete sud
difference() {
translate([-70, -22, -15])
cube(size=[140, 2, 30], center=false);
translate([0, 0, 2])
cylinder(r=r2-sp, h=h, center=true);
}
cylinder(r=r1, h=h, center=true);
}

intersection() { //parete nord
difference() {
translate([-70, 20, -15])
cube(size=[140, 2, 30], center=false);
translate([0, 0, 2])
cylinder(r=r2-sp, h=h, center=true);
}
cylinder(r=r1, h=h, center=true);
}
