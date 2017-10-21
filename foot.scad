include <constants.scad>;

rotate([0, 0, -45]) {
     difference() {
          cube([width+thickness_part*2, base_length, thickness_part]);
          translate([thickness_part, thickness_part, 0]) {
               rotate([-foot_inclination, 0, 0]) {
                    cube([width+gap_part, thickness_part+gap_part, thickness_part*2]);
               }
          }
          translate([thickness_part, thickness_part*3, 0]) {
               cube([width+gap_part, base_length-thickness_part*4, thickness_part]);
          }
          translate([0, base_length-thickness_part/tan(90-foot_inclination), 0]) {
               rotate([-foot_inclination, 0, 0]) {
                    cube([width+thickness_part*2, thickness_part, thickness_part*2]);
               }
          }
     }
}
