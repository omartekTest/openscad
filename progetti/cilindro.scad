dia_tubo=22;
H_tubo=26;
dia_foro=12;
dia_tappo=40;
H_tappo=8;

// cilindro cavo
difference() {
cylinder(r=dia_tubo/2, h=H_tubo+H_tappo, center=false);
cylinder(r=dia_foro/2, h=H_tubo+H_tappo+1, center=false);
}
// allargamento tappo
cylinder(r=dia_tappo/2, h=H_tappo, center=false);

// chiusura esteremità aperta
translate([dia_tappo, dia_tappo, 0]) {
cylinder(r=dia_foro/2-0.25, h=30, center=false);
cylinder(r=dia_tappo/2, h=H_tappo, center=false);
}
