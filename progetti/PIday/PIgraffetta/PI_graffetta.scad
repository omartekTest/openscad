translate([350,40,0])
linear_extrude(10)
import("Pi1.dxf",convexity=3);

translate([0,700,0])
linear_extrude(40)
import("Pi2.dxf",convexity=3);