difference(){
translate([25,25,5])
color("silver") cylinder(r=13,h=52,$fn=100);
translate([25,25,45])
cylinder(r=5,h=20,$fn=1000);
}
color("black") cube(50);
difference() {
    translate([0,0,50])color("silver")
    cube([50,50,2]);
    translate([5,5,50]) cylinder(r=2,h=4,$fn=100);
    translate([45,5,50]) cylinder(r=2,h=4,$fn=100);
    translate([5,45,50]) cylinder(r=2,h=4,$fn=100);
    translate([45,45,50]) cylinder(r=2,h=4,$fn=100);
}
translate([25,25,50]){color("silver")
cylinder(r=2,h=20,$fn=100);
}
translate([0,0,-1]){
color("silver")
    cube([50,50,5]);
}
translate([45,-25,0]){
rotate([0,90,0])color("silver")
cylinder(r=3,h=2,$fn=100);
}
translate([25,-25,0]){
rotate([0,90,0])color("silver")
cylinder(r=2,h=20,$fn=100);
}
translate([45,-35,0]){
rotate([0,90,0])color("silver")
cylinder(r=3,h=2,$fn=100);
}
translate([25,-35,0]){
rotate([0,90,0])color("silver")
cylinder(r=2,h=20,$fn=100);
}
