dist_fori=24.5; //distance between M8 center
lato_x=23;  //X measure
lato_y=50;  //Y measure
spessore=3; //thickness
bordi_alti=spessore+3; //higher thickness
sp_anello=3.5; //thickness donut M8

//FIRST PIECE
difference(){ //necessary for nut presence
  union(){
    translate([0, -1*lato_y/2, 0])
    main();
    mirror([0, 1, 0])
    translate([0, -1*lato_y/2, 0])
    main();
  }
  translate([lato_x/2, 0, 0])
  cylinder(r=4.5, h=10,$fn=6, center=true);
}

//SECOND PIECE
translate([30, 0, 0])
difference(){ //necessary for nut presence
  union(){
    translate([0, -1*lato_y/2, 0])
    main();
    mirror([0, 1, 0])
    translate([0, -1*lato_y/2, 0])
    main();
  }
  translate([lato_x/2, 0, 0])
  cylinder(r=4.5, h=10,$fn=20, center=true);
}

module main() {
union(){  //UNION for translating before mirroring
difference(){ //DIFFERENCE with cube1
  union() {
    difference(){
      cube([lato_x,lato_y/2,spessore]);
      translate([lato_x/2, (lato_y-dist_fori)/2, 0]) foro();}
    translate([lato_x/2, (lato_y-dist_fori)/2, 0]) bordi();
          }
  translate([lato_x/2-4, 0, 0]) cube(size=[8, (lato_y-dist_fori)/2-1.5, 10], center=false); //cube1
            }
#translate([lato_x/2-4, (lato_y-dist_fori)/2-2, 0]) tondi(); // to reduce M8 hole and block them
} //fine UNION
}

module foro () {  //hole for smooth rod M8
  cylinder(r=8/2, h=bordi_alti, $fn=20, center=false);
}

module bordi () {
  difference() {
    cylinder(r=8/2+sp_anello, h=bordi_alti, center=false);
    cylinder(r=8/2, h=bordi_alti, center=false);
  }

}

module tondi() {
  translate([0, -5, 0]) {
    intersection() {
      cube(size=[8, 10,10], center=false);
        union(){
        translate([-0.5, 5, 0])
        cylinder(r=1, h=bordi_alti, $fn=10, center=false);    //rounded left
        translate([8.5, 5, 0])
        cylinder(r=1, h=bordi_alti, $fn=10, center=false);  //rounded right
        }
    }
  }
}
