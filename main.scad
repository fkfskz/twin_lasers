include <plate_twin_lasers.scad>
use <rib.scad>

rib_height_new = 2.8;
plate_len = 120;
plate_width = 33;


rib_height_new = 4;

plate(plate_debth_new);
translate([0,0,-plate_debth_new/2 - rib_height_new/2])
rib(rib_debth = 3,rib_height = rib_height_new);
translate([0,0,-plate_debth_new/2 - rib_height_new/2 - 10])
rib_center_set(rib_debth = 3,rib_height = rib_height_new);
