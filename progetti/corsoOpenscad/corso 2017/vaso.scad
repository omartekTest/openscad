//corpo centrale
difference(){
  color("grey")hull()
  {
    color("grey")translate([0,0,10]) scale([0.55,0.55,1]) sphere(18.5,$fn=100);
    color("grey")  sphere(12,$fn=100);
  }
  cylinder(31,9.5,6.5,$fn=100);
  color ("grey")cylinder(31,9.5,6.5,$fn=100);
  }
  
difference()
{
 translate([-11,0,0]) color("blue") sphere(3,$fn=100);     
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([-7,-7,6]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([7,-7,6]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([-7,7,6]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([0,-11,0]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([11,0,0]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([0,11,0]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
translate([7,7,6]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
  translate([-7,7,-5]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
  translate([7,-7,-5]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
  translate([8,8,-3]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}
difference()
{
   translate([-8,-8,-3]) color("blue") sphere(3,$fn=100);
color("grey")cylinder(30,10,7,$fn=100);
}