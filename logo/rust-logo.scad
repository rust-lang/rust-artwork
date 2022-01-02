use <BOSL/beziers.scad>

$fa=2;
$fs=0.2;

module rust_logo_gear() {
    difference() {
        union() {
            difference() {
                circle(47.5);
                circle(38.5);
            }
            for(i=[0:31]) rotate(360 * i / 32) hull() {
                translate([51, 0]) circle(1.5);
                translate([46, 3]) circle(1.5);
                translate([46, -3]) circle(1.5);
            }
            for(i=[0:4]) rotate(360 * i / 5) hull() {
                translate([0, 35]) circle(3);
                translate([7, 42]) circle(3);
                translate([-7, 42]) circle(3);
            }
        }
        for(i=[0:4]) rotate(360 * i / 5) translate([0, 40]) circle(3);
    }
}

module rust_logo_letter_r() {
    minkowski() {
        circle(0.5);
        translate([0.5, -0.5]) difference() {
            bezier_polygon([
                            [-40, -22], [-40, -22],
                [  0, -22], [  0, -22], [  0, -22],
                [  0, -11], [  0, -11], [  0, -11],
                [ -9, -11], [ -9, -11], [ -9, -11],
                [ -9,  -3], [ -9,  -3], [ -9,  -3],
                [  1,  -3], [  1,  -3], [ 12,  -3],
                [  6, -22], [ 15, -22], [ 15, -22],
                [ 40, -22], [ 40, -22], [ 40, -22],
                [ 40,  -3], [ 40,  -3], [ 40,  -3],
                [ 34,  -3], [ 34,  -3], [ 34,  -3],
                [ 34,  -5], [ 34,  -5], [ 34, -13],
                [ 25, -12], [ 24,  -7], [ 23,  -2],
                [ 19,   2], [ 18,   2], [ 33,  10],
                [ 24,  26], [ 12,  26], [ 12,  26],
                [-35,  26], [-35,  26], [-35,  26],
                [-35,  15], [-35,  15], [-35,  15],
                [-25,  15], [-25,  15], [-25,  15],
                [-25, -11], [-25, -11], [-25, -11],
                [-40, -11], [-40, -11]
            ]);
            bezier_polygon([
                          [-9, 15], [-9, 15],
                [ 4, 15], [ 4, 15], [12, 15],
                [12,  7], [ 4,  7], [ 4,  7],
                [-9,  7], [-9,  7]
            ]);
        }
    }
}

linear_extrude(3) rust_logo_gear();
linear_extrude(2) rust_logo_letter_r();
