//Oggetto da arredamento
intersection(){
   difference(){ color("grey")cylinder(15,30,45,$fn=250);
   union()
{
   translate([0,0,5])
color("grey")cylinder(15,23,23,$fn=250);
   translate([0,0,-4])
color ("grey")sphere(12,$fn=250);
}
}
 translate([0,0,8])
color("grey")scale([1,1,0.8])sphere(30,$fn=250);
}

intersection()
{
    difference(){
    translate([0,0,5])
color("grey")cylinder(5,12,12,$fn=250);
    translate([0,0,2.1])
color("grey")cylinder(17,7,7,$fn=250);
    }
    scale([1,1,0.5])translate([0,0,8])color("grey")sphere(16,$fn=250);
}
difference()
{
difference()
{
translate([0,0,10])
color("grey")cylinder(13.5,9,9,$fn=250);
translate([0,0,7.1])
color("grey")cylinder(17,7,7,$fn=250);
}
translate([0,0,26.1])
color("grey")sphere(8,8,8,$fn=250);
}
