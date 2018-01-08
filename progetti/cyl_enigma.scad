diametro=140; // diametro cilindro
spessore=9; // spessore di mezzo cilindro

foro_dia=25; // diametro foro centrale
foro_H=spessore*2+4; // altezza

ghiera_Ypos=81; // posizione cilindro per foro ghiera
ghiera_dia=20; // diametro cilindro foro della ghiera

alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ"; // alfabeto
cifra1="BDFHJLCPRTXVZNYEIWGAKMUSQO"; // alfabeto cifrato

cifra2="JDKSIRUXBLHWTAMCQGZNPYFVOE";
cifra3="EKMFLGDQVZNTOWYHXUSPAIBRCJ";
cifra4="GAJDSIRWUXBLKHTMQNPYFVOEZC";
cifra5="KMGDVZNOWYHFXUSQPTELAIBRCJ";

//MAIN

difference() {
union() {
    translate([0, 0, 5.5])
    cifrario(alfabeto);
    translate([0, 0, -5.5])
    cifrario(cifra5);
    ghiera();
} //union
cylinder(r=foro_dia/2, h=foro_H, center=true);
} //difference

// cilindro con lettere
module cifrario(testo_cifrario) {
difference() {
  cylinder(r=diametro/2, h=spessore, $fn=26, center=true);

      for (i=[0:25]) {
          rotate([0, 0, 360/26*i]) {
          translate([0, diametro/2-1, 0])
          rotate([0, 90, 90]) {
            linear_extrude(height = 1.5) {
            text(testo_cifrario[i], size=9, font="Arial:style=bold", halign="center", valign="center",
            spacing=1.0, direction="ltr", language="en", script="latin"); }// extrude
          }
          } // rotate
      } //for
    } //difference
} // modulo

// ghiera centrale
module ghiera() {
difference() {
    cylinder(r=diametro/2+5, h=2, center=true);
    for (i=[0:25]) {
        rotate([0, 0, 360/26*i]) {
        translate([0, ghiera_Ypos, 0])
         {
          cylinder(r=ghiera_dia/2, h=20, center=true);
        }
        } // rotate
    } //for
    } //difference
} //modulo
