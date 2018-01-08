//componente singolo danneggiato.
difference(){
difference(){
union(){
cube([10,10,30]);//corpo centrale
translate([5,10,29])rotate([90,0,0])cylinder(10,5,5,$fn=50);//arco
}
translate([-1,2.5,24.5]) cube([12,5,10]);//parallelepipedo sottratto dal cilidro, per formare i due pezzi separati
}
translate([5,8.5,29])rotate([90,0,0])cylinder(7,3,3,$fn=50);//cerchi dentro l'arco
}
translate([-2.5,-2.5,8])cube([15,15,2]);//parallelepipedo posizionato a circa la metà
