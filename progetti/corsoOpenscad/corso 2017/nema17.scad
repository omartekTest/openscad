$fn=30;
module nema17(altezzam = 40, diametro = 5.2, asta = 0.2)
{
rotate(a=90, v=[-1,0,0])
nema(grandezzam = 42, altezzam = 40, diametro = 5.2, asta = 0.2);
}

nema17();

module nema(grandezzam=42, altezzam = 38, diametro = 5.2, asta = 0.2) {
	difference() {
    union()
    {
      color("silver")
		translate([0,altezzam/2,0]) rotate([90,0,0]) hull() {
			translate([-(grandezzam/2-5),(grandezzam/2-5),0]) cylinder(r=5,h=altezzam, center = true);
			translate([(grandezzam/2-5),(grandezzam/2-5),0]) cylinder(r=5,h=altezzam, center = true);
			translate([-(grandezzam/2-5),-(grandezzam/2-5),0]) cylinder(r=5,h=altezzam, center = true);
			translate([(grandezzam/2-5),-(grandezzam/2-5),0]) cylinder(r=5,h=altezzam, center = true);
		}
        color("black")
        translate([0,altezzam/2,0]) rotate([90,0,0]) hull() {
            translate([-(grandezzam/2-5),(grandezzam/2-5),0]) cylinder(r=5.1,h=altezzam/2, center = true);
            translate([(grandezzam/2-5),(grandezzam/2-5),0]) cylinder(r=5.1,h=altezzam/2, center = true);
            translate([-(grandezzam/2-5),-(grandezzam/2-5),0]) cylinder(r=5.1,h=altezzam/2, center = true);
            translate([(grandezzam/2-5),-(grandezzam/2-5),0]) cylinder(r=5.1,h=altezzam/2, center = true);
        }
    }


        union() {
		translate([15.5,0.1,15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([-15.5,0.1,15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([15.5,0.1,-15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
		translate([-15.5,0.1,-15.5]) rotate([90,0,0]) cylinder(r=1.5,h=10, center = true);
        }
	}
    color("silver")
	translate([0,-10,0]) rotate([90,0,0])
    difference() {
        cylinder(r=diametro/2,h=20, center = true);
        translate([-diametro/2,(diametro/2)-asta*2,1])
        cube([diametro,diametro/2,10]);
    }
    color("silver")
	difference() {
		translate([0,-1,0]) rotate([90,0,0]) cylinder(r=11,h=2, center = true);
		translate([0,-1.1,0]) rotate([90,0,0]) cylinder(r=9,h=2, center = true);
	}
}

module buchi(pos=[1,1,1,1], grand=15.5, h=10, buchi=false, $fn=8){
    for (i=[0:3]) {
        if (pos[i] == 1) {
            rotate([0, 0, 90*i]) translate([grand, grand, 0]) {
                if (buchi) {
                    rotate([0, 0, -90*i]) translate([0,0,0]) rotate([0,0,90]) cylinder(h = h+0.1, r = 3/2);
					rotate([0, 0, -90*i]) translate([0,0,h]) rotate([0,0,22.5]) cylinder(h = h, r = 3*2.2/2, $fn = $fn);
                } else {
                    rotate([0, 0, -90*i]) cylinder(h=h, r=4, $fn=$fn);
                }
            }
        }
    }
}