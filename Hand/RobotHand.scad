

element(0,0,0,5,15,true, false);



resolution=100;



//cylind(17,0,6,15);

module cylind(x,y,z, cylh, cylr)
{
rotate([90,0,0])translate([x,y,z])cylinder(h=cylh, r=4, center=true); $fn=500;
}











$fn=resolution;

module element(x,y,z, cylh, cylr, mw1, mw2)
{
union(){
translate([x,y,z]){
difference()
	{
	rotate([0,90,0])cylinder(h=cylh, r=cylr);
		
   rotate([0,90,0])translate([cylr-2.5,0,-0.1])rotate([0,0,0])cylinder(h=cylh+0.2, r=2);
	
	}

if(mw1==true)
mount_male(cylh,cylr, true);
if(mw1==false)
mount_female(cylh,cylr);
if(mw1==3)
{
rotate([180,0,0])mount_end(cylh,cylr);
}

if(mw2==false)
	rotate([0,180,0]){translate([-cylh,0,0]){mount_female(cylh,cylr);}}
if(mw2==true)
	rotate([0,180,0]){translate([-cylh,0,0]){mount_male(cylh,cylr);}}
if(mw2==3)
{
	rotate([0,180,0]){translate([-cylh,0,0]){mount_end(cylh,cylr);}}
}
}
}
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
	
	///////////////////////

difference(){
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=resolution;
rotate([180,0,0])translate([-10,0,-6])cube([20,20,10]);
}

/////////////////////////
}
}


translate([cylh+12,cylr-9, 0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=resolution;
}
}

}

difference()
{
	
//B
translate([cylh,-cylr+9 ,0])
{
rotate([90,90,0])
{//
difference(){
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=resolution;
rotate([180,0,0])translate([-10,0,-5])cube([20,20,10]);
}//
}
}


translate([cylh+12,-cylr+9, 0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=resolution;
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
difference(){
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=resolution;
rotate([180,0,0])translate([-10,0,-5])cube([20,20,10]);
}
}
}



translate([cylh+12,0 ,0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=resolution;
}
}
}
}










module mount_end(cylh, cylr)
{



translate([10,-5 ,0])
{
rotate([90,90,0])
{
difference(){
scale([1,2,1])cylinder(h=5, r=3, center=true); $fn=resolution;
rotate([180,0,0])translate([-15,0,-5])cube([20,20,10]);
}
}
}

translate([10,5 ,0])
{
rotate([90,90,0])
{
difference(){
scale([1,2,1])cylinder(h=5, r=3, center=true); $fn=resolution;
rotate([180,0,0])translate([-15,0,-5])cube([20,20,10]);
}
}
}

translate([14, 10 ,0])
{
rotate([90,90,0])
{

translate([0,0,10])cylinder(h=5, r=1.5, center=true); $fn=resolution;


}
}





}


































