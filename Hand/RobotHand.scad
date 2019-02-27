
rotate([0,90,0])
{
cylinder(h=25, r=15); $fn=50;
}

difference()
{
translate([25,6 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}

translate([30,6 ,0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}
}





difference()
{
translate([25,-6 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}

translate([30,-6 ,0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}
}









union()
{
translate([50, 0, 0])
{
rotate([0,90,0])
{
cylinder(h=25, r=15); $fn=50;
}
}




translate([50,0 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}


}
