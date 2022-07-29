//!OpenSCAD

Coin_width = 1.76;
Coin_diameter = 24.3;
Stack = 4;
Times = 10;
{
	$fn=500;
	union(){
		translate([0, 0, 5]){
			rotate([90, 0, 270]){
				linear_extrude( height=2, twist=0, scale=[1, 1], center=false){
					text("Quarter", font = "Roboto", size = 5*0.75, halign="center",	 valign="center");

				}
			}
		}
		mirror([0,0,1]){
			translate([0, 0, (Coin_diameter / -2 - 2)]){
				difference() {
					translate([0, ((Coin_diameter + 6) / -2), 0]){
						cube([((Coin_width * Stack) * Times + 4), (Coin_diameter + 6), (Coin_diameter / 2 + 2)], center=false);
					}

					translate([2, 0, 0]){
						for (Times = [0 : abs(1) : Times - 1]) {
							translate([((Coin_width * Stack) * Times), 0, 0]){
								rotate([0, 90, 0]){
									hull(){
										translate([0, 1, (Coin_width * Stack)]){
											cylinder(r1=(Coin_diameter / 2), r2=(Coin_diameter / 2), h=0.001, center=false);
										}
										translate([0, -1, 0]){
											cylinder(r1=(Coin_diameter / 2), r2=(Coin_diameter / 2), h=0.001, center=false);
										}
									}
								}
							}
						}

					}
				}
			}
		}
	}
}
