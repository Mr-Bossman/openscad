count = 10;
tot_len = count * 3 + 1.5;
cyl_sides = 60;
difference() {
	union(){
		for (i = [0 : abs(3) : count * 3]) {
			translate([i, 0, 0]){
				cube([1.5, 11.5, 15.5], center=false);
			}
		}
		translate([0, 0, 0]){
			cube([tot_len, 1.5, 5.5], center=false);
		}
		cube([tot_len, 11.5, 1.5], center=false);
		translate([0, 11.5, 8]){
			cube([tot_len, 1.5, 7.5], center=false);
		}
		translate([0, 0.75, 5.5]){
			rotate([0, 90, 0]){
				{
					$fn=cyl_sides;
					cylinder(r1=0.75, r2=0.75, h=tot_len, center=false);
				}
			}
		}
		difference() {
				hull(){
					translate([0, 12.25, 8]){
						rotate([0, 90, 0]){
							{
								$fn=cyl_sides;
								cylinder(r1=0.75, r2=0.75, h=tot_len, center=false);
							}
						}
					}
					translate([0, 12, 8]){
						rotate([0, 90, 0]){
							{
								$fn=cyl_sides;
								cylinder(r1=0.75, r2=0.75, h=tot_len, center=false);
							}
						}
					}
				}
				cube([tot_len, 11.5, 15.5], center=false);
		 }
	}
	translate([-0.5, 0, 5.5]){
		rotate([(atan(10 / 13)), 0, 0]){
			cube([tot_len+1, 20, 10], center=false);
		}
	}
	translate([-0.5, 12.6, 14.7]){
		rotate([30, 0, 0]){
			difference() {
				cube([tot_len + 1, 2, 2], center=false);

				rotate([0, 90, 0]){
					{
						$fn=cyl_sides;
						cylinder(r1=0.5, r2=0.5, h=tot_len + 1, center=false);
					}
				}
			}
		}
	}
	translate([-0.5, 0.58, 5.21]){
		rotate([135, 0, 0]){
			difference() {
				cube([tot_len + 1, 2, 0.4], center=false);

				rotate([0, 90, 0]){
					{
						$fn=cyl_sides;
						cylinder(r1=0.6, r2=0.6, h=tot_len + 1, center=false);
					}
				}
			}
		}
	}
}
