word="MOM\u2665MOM\u2665";  //word to spinn
size_font=15;               //size of the font
dist_center=12;             //distance from center
spacing_value=1;            //word letter spacing

bearing_dia=22.5;           //bearing diameter
thick_donut=6;              //thickness of the donut

n_word=len(word);           //calculate length

difference() {

union(){
cylinder(r=(bearing_dia+thick_donut)/2, h=7, center=true);
for (i=[0:n_word-1]) {
  rotate([0, 0, -360/n_word*i]) {     //iteration that create word around the donut
    translate([0, dist_center, -7/2]) {
        linear_extrude(height = 7)
        text(word[i], size=size_font, font="Liberation Sans", halign="center", valign="baseline",
          spacing=spacing_value, direction="ltr", language="it");
      }
    }
  }
} //end union()

cylinder(r=bearing_dia/2, h=10, center=true);   //center hole
}
