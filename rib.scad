use <plate_twin_lasers.scad>


plate_debth_new = 2.8;
plate_len = 120;
plate_width = 33;

//rib(rib_debth = 3,rib_height = 15.5);
//rib_center_set(rib_debth=3, rib_height=5);
rib_edge(rib_debth=3,rib_height=4);
module rib_edge(rib_debth,rib_height){
    difference(){
        rib_center(rib_debth=3, rib_height=5);
        translate([0, plate_len/2,0])
        rotate([45,0,0])
        cube([10,40,30],center=true);
    }
}
module rib_center_set(rib_height, rib_debth){
    difference(){
        rib_center(rib_debth, rib_height);
        holes();
    }
}
module holes(){
    translate([0,0,-5])
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