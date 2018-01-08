r_base=16.5; //base cone radius
h_base=25; //height base cone
r_nut=5.7; //nut inside cone
h_nut=5; //thickness nut
r_dish=16.5; //radius superior dish
h_dish=3; //thickness
r1_handle=4; //radius superior handle
r2_handle=2;
h_handle=30;

// inferior part
module cone(){
  difference() {
      cylinder(r1=0,r2=r_base, h=h_base, $fn=20,center=false);
      translate ([0,0,h_base/2]) cylinder(r=r_nut+0.75, h=h_base/2, $fn=6, center=false);
  }
}
// superior part
module sup_part() {
  translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=r_nut, h=h_base/2-h_nut-1, $fn=6, center=false); //inferior nut
  translate([0, 0, h_base/2-h_nut-1]) cylinder(r=7.2, h=1, $fn=20, center=false); //CD hole
  translate([0, 0, h_base/2-h_nut-1+0.8]) cylinder(r=r_dish, h=h_dish, center=false); //middle ring
  translate([0, 0, h_base/2-h_nut-1+0.8+h_dish]) cylinder(r1=r1_handle, r2=r2_handle, h=h_handle, center=false); //superior handle
}

//translate([50, 0, h_base/2]) rotate ([180,0,0]) cone();
sup_part();

translate([50, 0, h_base]) rotate ([180,0,0]) cone();
