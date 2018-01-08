//righello da 10 cm
l=10;
for(i = [0:l])
{
    union()
    {
    difference()
    {
    difference()
    {
        translate([i,0,0]) cube([1, 1, 0.1]);
        translate([i, 0, 0]) cube([0.05, 1, 2], center=true);
    }
    translate([i+0.5, 0, 0]) cube([0.03, 0.5, 2], center=true);
    }
    translate([i, 0.5,0])cube([1,0.2,0.2]);
    translate([i, 0,0])cube([1,0.075,0.1]);
    }
}
