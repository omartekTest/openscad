nut_dia=14.5; //diameter nut
n_side=6; //side number
name="OMYOMY";


difference(){ //hole for nut
import("fibonacc_spinner.stl"); //you need this file
  for (i=[0:2]) {
  rotate([0,0,120*i])
  translate([0, 30, 0])
  #cylinder(r=nut_dia/2, h=20, $fn=n_side, center=true);
  }

}

for (i=[0:2]) { // name repeated three times

    rotate([0, 0, i*120]) {
    linear_extrude(height=8){ //3D text
      translate([-16, 6, 0])
      rotate([0, 0, 40])
      text(name, size=6, font="Liberation Sans", halign="center", valign="baseline",
        spacing=1.0, direction="ltr", language="en", script="latin");
    }
  }
}
