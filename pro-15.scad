module create_rack(slot, thickness, length, height)  {
    difference() {
        radius = thickness / 2;
        scale_x = 1;
        scale_y = length / radius;
        scale_z = height / radius;
        scale([scale_x, scale_y, scale_z])
            sphere(r=radius);
        scale([scale_x, scale_y, scale_z])
            translate([0, 0, -radius/2])
                cube([radius*2, radius*2, radius], center=true);
        scale([1, scale_y, scale_z])
            translate([0, 0, radius/1.5])
                cube([slot, radius*2, radius], center=true);
    }
};

create_rack(
    slot=18,        // size of the space a macbook is being inserted to
    thickness=120,  // size of the rack in 'x' axis
    length=80,      // size of the rack in 'y' axis
    height=80       // size of the rack in 'z' axis
);
