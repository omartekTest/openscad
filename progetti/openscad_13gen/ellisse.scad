module rotcy(rot, r, h) { //modulo per la creazione di cilindri ruotati
rotate(rot) // non viene eseguito se non richiamato
cylinder(h ,r ,r ,true);
}
//parte principale dello in cui si richiama il modulo

module fiocco(sizex,sizey,sizez) {

difference() {

union() {
resize([sizex, sizey, sizez]) {
for (i=[0:10])
rotcy([0,45+i*10,0],10,30);
}
sphere(r=10);
}

cylinder(r=3, h=500, center=true);
}
}

fiocco(80,10,50);

translate([0, 50, 0])
fiocco(60,10,30);

translate([0, -50, 0])
fiocco(50,20,15);
