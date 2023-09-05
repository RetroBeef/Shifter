$fn=200;
module rail(){
    translate([27.25,-50,40])cube([6.5,60,10]);
    translate([24.5,-50,36])cube([12,60,5]);
}

union(){
    difference(){
        union(){
            difference(){
                translate([0,60,2])rotate([90,0,0])import("js_case_body.stl");
                translate([14.5,14.5,6])union(){
                    cube([31,31,24.5]);
                    translate([-0.5,-4.5,24.49])cube([31,41,100/*10*/]);
                    translate([15,15,24.5+10])cylinder(h=19,d=28.8);
                }
                translate([29.5,29.5,0])cylinder(h=19,d=28.8);
            }
            translate([5,-50,2])cube([50,60,50]);
        }
        translate([10,-110,6])cube([41,100,41]);
    }
    rail();
    translate([4,0,57])rotate([0,90,0])rail();
    translate([61,0,53])rotate([0,180,0])rail();
    translate([57,0,-4])rotate([0,270,0])rail();
}
//%translate([30.5,150,26.5])import("Profile.stl");

