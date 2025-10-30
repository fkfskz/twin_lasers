$fn=64;

plate_debth_new = 2.8;
plate_len = 120;
plate_width = 33;

//plate(plate_debth_new);

module plate(plate_debth){
    difference(){
        base(plate_debth);
        holes();
    } 
}

module holes(){
    cylinder(h = 40, d=6.5, center = true);
    
    translate([0,-plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
    
    translate([0,plate_len/2,0])
    cylinder(h = 40, d=6.5, center = true);
}

module base(plate_debth){
    cube([plate_width,plate_len,plate_debth], center = true);
    //color("red")
    translate([0,-plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
    //color("green")
    translate([0,plate_len/2,0])
    cylinder(h=plate_debth, d=plate_width, center = true );
}