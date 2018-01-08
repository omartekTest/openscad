diametro=150; // diametro cilindro
spessore=12; // spessore di mezzo cilindro

foro_dia=16.5; // diametro foro centrale
foro_H=spessore*2+4; // altezza

ghiera_Ypos=91; // posizione cilindro per foro ghiera
ghiera_dia=28; // diametro cilindro foro della ghiera

alfabeto="ABCDEFGHIJKLMNOPQRSTUVWXYZ"; // alfabeto
cifra1="BDFHJLCPRTXVZNYEIWGAKMUSQO"; // alfabeto cifrato

cifra2="JDKSIRUXBLHWTAMCQGZNPYFVOE";
cifra3="EKMFLGDQVZNTOWYHXUSPAIBRCJ";
cifra4="GAJDSIRWUXBLKHTMQNPYFVOEZC";
cifra5="KMGDVZNOWYHFXUSQPTELAIBRCJ";

//MAIN

difference() {
union() {
    translate([0, 0, 5])
    cifrario(alfabeto);
    //ghiera();
} //union
cylinder(r=foro_dia/2, h=foro_H, center=true);
} //difference

// cilindro con lettere
module cifrario(testo_cifrario) {
cylinder(r=diametro/2, h=spessore, $fn=26, center=true);

} // modulo

// ghiera centrale
module ghiera() {
difference() {
    cylinder(r=diametro/2+6, h=2, center=true);
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
