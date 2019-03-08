////difference()
////{
////scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=50;
////translate([-10,1,-5])cube([25,25,10]);
////}
//
//
//cylr=20/2;
//
//cylh=2;
//
//
//
//
//
//
//difference()
//{
//
//cylinder(cylh,cylr,cylr);
//
//translate([0,-cylr,-0.2])cube([2*cylr,2*cylr,cylh+2*0.2]);
//
//}
cylh=5; 
cylr=150;
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
translate([-10,0,-5])cube([20,20,10]);
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