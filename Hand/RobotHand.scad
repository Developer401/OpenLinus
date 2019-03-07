







element(0,0,0,10,15,true, true);












module element(x,y,z, cylh, cylr, mw1, mw2)
{
translate([x,y,z]){ rotate([0,90,0]){cylinder(h=cylh, r=cylr);}}

if(mw1==true)
	translate([x,y,z]){mount_male(cylh,cylr, true);}
if(mw1==false)
	translate([x,y,z]){mount_female(cylh,cylr);}


if(mw2==false)
	rotate([0,180,0]){translate([-cylh,y,z]){mount_female(cylh,cylr);}}
if(mw2==true)
	rotate([0,180,0]){translate([-cylh,y,z]){mount_male(cylh,cylr);}}

}
module mount_male(cylh, cylr)
{



difference()
{
//A
translate([cylh,cylr-9 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}


translate([cylh+5,cylr-9, 0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}

}

difference()
{
	
//B
translate([cylh,-cylr+9 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}


translate([cylh+5,-cylr+9, 0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}





}


}



module mount_female(cylh, cylr)
{
difference()
{
translate([cylh, 0 ,0])
{
rotate([90,90,0])
{
cylinder(h=5, r=10, center=true); $fn=50;
}
}



translate([cylh+5,0 ,0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}
}
}






































