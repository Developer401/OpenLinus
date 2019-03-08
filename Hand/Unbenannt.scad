generic_mount(0,0,0);
module generic_mount(x,y,z)
{

translate([x,y,z])difference()
{
translate([x+4, 0 ,0])rotate([90,90,0])difference()	
{
scale([1,2,1])cylinder(h=5, r=10, center=true); $fn=500;
translate([0,8,0])cube([20,25,5], center=true); $fn=100;
}







translate([y-10,0 ,0])rotate([90,90,0])cylinder(h=6, r=4, center=true);$fn=100;
} 

//translate([x+14,0,0])cube([20,5,20], center=true); $fn=100;}




}