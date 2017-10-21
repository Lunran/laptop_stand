include <constants.scad>;

rotate([0, -90, -45]) {
     stand();
}

module stand() {
     cube([width, base_length, thickness_part]);
     finger();
     translate([0, gap_y, 0]) finger();
}

module finger() {
     rotate([finger_angle, 0, 0]) cube([width, finger_length, thickness_part]);
}
