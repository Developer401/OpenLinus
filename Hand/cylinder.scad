


cylind(0,0,0,5,15);

module cylind(x,y,z, cylh, cylr)
{
translate([x,y,z])cylinder(h=cylh, r=cylr, center=true); $fn=500;
}