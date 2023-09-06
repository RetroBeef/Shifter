$fn=200;

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
            translate([50,-105,2])cube([28,160,50]);
        }
        translate([-10,-110,0])cube([65,100,60]);
        translate([0,-106,10])cube([79,106,4]);
        translate([66,-95,0]) cylinder(h=100, r=4);
    }
}