difference() {
    thickness = 20;
    height = 20;
    length = 30;
    radius = thickness / 2;
    scale_x = 1;
    scale_y = length / radius;
    scale_z = height / radius;
    scale([scale_x, scale_y, scale_z])
        sphere(r=radius);
    scale([scale_x, scale_y, scale_z])
        translate([0,0, -radius/2])
            cube([radius*2, radius*2, radius], center=true);
}
