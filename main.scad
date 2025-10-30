include <plate_twin_lasers.scad>
use <rib.scad>
use <nuts.scad>

//d_small_nut = 15;
//d_big_nut = 24;
h_nut = 4;

rib_height_new = 4;


plate_debth_new = 2.8;
plate_len = 120;
plate_width = 33;

translate([0,0,-h_nut/2+plate_debth_new/2])
color("lime")
nut_small();

translate([0,-plate_len/2,-h_nut/2-plate_debth_new/2])
color("blue")
nut_big();

translate([0,plate_len/2,-h_nut/2-plate_debth_new/2])
color("blue")
nut_big();

plate(plate_debth_new);
translate([plate_width/2-3/2, 0, -rib_height_new/2-plate_debth_new/2])
rib_edge(rib_debth=3, rib_height = rib_height_new);
rib_center(rib_debth=3, rib_height=rib_height_new);

//translate([0,0,-plate_debth_new/2 - rib_height_new/2])
//rib(rib_debth = 3,rib_height = rib_height_new);
translate([0,0,-plate_debth_new/2 - rib_height_new/2])
rib_center_set(rib_debth = 3,rib_height = rib_height_new);