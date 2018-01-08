intersection(){
cube([75, 75, 300], center = true);
cylinder(150,45,45);

}

difference(){
    translate([0,-20,0]) rotate([90,0,0])cylinder(10,33,33);
    #translate([0,-19,-20]) rotate([90,0,0])cylinder(10,10,10);
}

difference(){
    translate([0,30,0]) rotate([90,0,0])cylinder(10,33,33);
    translate([0,29,-20]) rotate([90,0,0])cylinder(10,10,10);

}

intersection(){
    translate([0,0,100])cylinder(190,55,45);
    translate([0,0,100])cube([95,95,20], center = true);
}
