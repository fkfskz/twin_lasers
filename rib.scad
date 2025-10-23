include <plate_twin_lasers.scad>
//rib(rib_debth = 3,rib_height = 15.5);

rib_center_set();

module rib_center_set(){
    difference(){
        rib_center(rib_debth=3, rib_height=25);
        holes();
    }
}
module holes(){
    cylinder(d1=55, d2=5, h=25+1, center=true);
    
    translate([0, plate_len/2])
    cylinder(d1=55, d2=5, h=25+1, center=true);
    
    translate([0, -plate_len/2])
    cylinder(d1=55, d2=5, h=25+1, center=true);
}
module rib_center(rib_debth,rib_height){

    cube([rib_debth,,150,rib_height], center = true);
}

module rib(rib_debth,rib_height){
    difference(){
        //scale([1,1,rib_height])
        plate(plate_debth=rib_height);
        translate([0,0,0])
        //scale([1,1,rib_height])
        cube([plate_width-rib_debth,plate_len,rib_height+1], center = true);
        
        color("red")
        translate([0,-plate_len/2,0])
        //scale([1,1,rib_height])
        cylinder(h=rib_height+1, d=plate_width-rib_debth, center = true );
        
        color("green")
        translate([0,plate_len/2,0])
        //scale([1,1,rib_height])
        cylinder(h=rib_height+1, d=plate_width-rib_debth, center = true );
    }
}
