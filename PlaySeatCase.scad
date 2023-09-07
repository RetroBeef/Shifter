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
            translate([50,-130,2])cube([28,185,50]);
        }
        translate([-10,-135,0])cube([65,125,60]);
        translate([0,-131,10])cube([79,123,4]);
        translate([66,-120,0]) cylinder(h=100, r=4);
    }
}