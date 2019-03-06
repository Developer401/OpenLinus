




















element(50,50,50,25,15, false);


module element(x,y,z, cylh, cylr, mw)
{
	
if(mw)
{
translate([x,y,z])
{ rotate([0,90,0]){cylinder(h=cylh, r=cylr); $fn=50;}

mount_male(x,y,z,cylh,cylr);


}
}
else
{
translate([x,y,z])
{ rotate([0,90,0]){cylinder(h=cylh, r=cylr); $fn=50;}

mount_female(x,y,z,cylh,cylr);


}
}


}





module mount_male(x,y,z, cylh, cylr)
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



module mount_female(x,y,z, cylh, cylr)
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






































