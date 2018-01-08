h=40; //altezza cuscinetto
r=50; //raggio esterno
sp=4; //spessore parete

//anello
module anello_SC(h1,r1,sp1){
difference(){
    cylinder(h1,r1,r1,true); //cilindro principale
    cylinder(h1+5,r1-sp1,r1-sp1,true); //foro
    cylinder(h1*2/3,r1-sp1/2,r1-sp1/2,true); //scanalatura
}
}

module anello_noSC(h1,r1,sp1){
difference(){
    cylinder(h1,r1,r1,true); //cilindro principale
    cylinder(h1+5,r1-sp1,r1-sp1,true); //foro
}
}
/*
FUNZIONE PRINCIPALE

difference(){
anello(40,50,5);
translate([0,0,50]) cube(100,true);
}
*/
//projection(cut=true)
union(){
difference(){
    anello_noSC(h,r,sp);
    anello_noSC(h*2/3,r-sp/2,sp);
}

difference(){
    anello_noSC(h,r-20,sp);
    anello_noSC(h*2/3,r-19,sp/2+1);
}
}

for(i=[0:30:360]){
rotate([0,0,i])
translate ([37.5,0,0]) sphere(9.54);
}
    