intersection(){
   difference(){
   color ("silver")cylinder(15,30,30,$fn=1000);
   union(){
   translate([0,0,5])color ("silver")cylinder(15,23,23,$fn=1000);
   translate([0,0,-4])color ("silver")sphere(12,$fn=250);
         }
   }
   translate([0,0,8])color("silver")scale([1,1,0.8])sphere(30,$fn=250);
}/*ruota iniziale*/

intersection(){
    difference(){
    translate([0,0,5])color ("silver")cylinder(5,12,12,$fn=1000);
    translate([0,0,2.1])color ("silver")cylinder(17,7,7,$fn=1000);
    }
    scale([1,1,0.5])translate([0,0,8])color("silver")sphere(16,$fn=250);
}/*cilindro basso*/

difference(){
difference(){
translate([0,0,10])color ("silver")cylinder(13.5,9,9,$fn=1000);
translate([0,0,7.1])color ("silver")cylinder(17,7,7,$fn=1000);
}
translate([0,0,26.1])color ("silver")sphere(8,8,8,$fn=200);
}/*cilindro centrale*/
