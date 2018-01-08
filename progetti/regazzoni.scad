/*Righello della lunghezza desiderata con sensibilità di 1mm*/
l=100; //lunghezza in mm
difference()
{
    cube([1, l, 8.5 ]);
    for (i = [1:l-1])
    {
        translate([0.05, i, 0]) cube([1, 0.125, 3 ]);
        if (i % 5 == 0)
        {
            translate([0.05, i, 0]) cube([5, 0.125, 5 ]);
        }
        if (i % 10 == 0)
        {
            translate([0.05, i, 0]) cube([10, 0.125, 7 ]);
        }
    }
}
