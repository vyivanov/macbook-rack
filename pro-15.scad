

module create_rack(length_x, length_y, length_z, thickness) {
    difference() {
        scale([1, length_y/length_x, 1])
            cylinder(h=length_z, r=length_x/2, center=true);
        translate([0, 0, 10])
            scale([(length_x-thickness)/length_x, (length_x-thickness)/length_x, 1])
                scale([1, length_y/length_x, 1])
                    cylinder(h=length_z, r=length_x/2, center=true);
            scale([0.7, 0.7, 1])
                scale([1, length_y/length_x, 1])
                    cylinder(h=length_z+2, r=length_x/2, center=true);
        translate([0, 0, 10])
            cube(size=[162, 18, 80], center=true);

    scale([1.2,1,1])
    translate([0,60,30])
           sphere(r=50);
        
    scale([1.2,1,1])
    translate([0,-60,30])
           sphere(r=50);
    }
};

create_rack(
    length_x=160,
    length_y=120,
    length_z=80,
    thickness=15
);

