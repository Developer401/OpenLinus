



move=0;



element(0,0,0,1,15,true, true);
//rotate([0,move,0])element(38,0,0,10,15,true, false);

//rotate([0,70,0])element(30,0,22,10,15,true, false);






element(100,0,0,5,15,true, true);











module element(x,y,z, cylh, cylr, mw1, mw2)
{
translate([x,y,z]){
	rotate([0,90,0]){cylinder(h=cylh, r=cylr);}

if(mw1==true)
mount_male(cylh,cylr, true);
if(mw1==false)
mount_female(cylh,cylr);


if(mw2==false)
	rotate([0,180,0]){translate([-cylh,0,0]){mount_female(cylh,cylr);}}
if(mw2==true)
	rotate([0,180,0]){translate([-cylh,0,0]){mount_male(cylh,cylr);}}
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
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=50;
rotate([180,0,0])translate([-10,0,-5])cube([20,20,10]);
}

/////////////////////////
}
}


translate([cylh+12,cylr-9, 0])
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
{//
difference(){
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=50;
rotate([180,0,0])translate([-10,0,-5])cube([20,20,10]);
}//
}
}


translate([cylh+12,-cylr+9, 0])
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
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=50;
}
}



translate([cylh+12,0 ,0])
{
rotate([90,90,0])
{
cylinder(h=6, r=4, center=true); $fn=50;
}
}
}
}






































