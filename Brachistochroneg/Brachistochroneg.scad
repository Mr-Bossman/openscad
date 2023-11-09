$fps = 30;
$steps = 720;
degrees = $t*360;
ratio = 2;
r_size = 10;
sides = 60;
line_sz = 0.2;
union(){
  for (i = [0 : abs(1) : 360 - 1]) {
    hull() {
    rotate([0, 0, i]){
      translate([0, (-(ratio * r_size + r_size)), 0]){
        rotate([0, 0, i]){
          translate([(ratio * r_size), 0, 0]){
            {
              $fn=sides;
              translate([-line_sz, 0, 0]){
                color([0,0,0]) {
                  cylinder(r1=line_sz, r2=line_sz, h=0.1   , center=false);
                }
              }
            }
          }
        }
      }
    }
    rotate([0, 0, (i + 1)]){
      translate([0, (-(ratio * r_size + r_size)), 0]){
        rotate([0, 0, (i + 1)]){
          translate([(ratio * r_size), 0, 0]){
            {
              $fn=sides;
              translate([-line_sz, 0, 0]){
                color([0,0,0]) {
                  cylinder(r1=line_sz, r2=line_sz, h=0.1, center=false);
                }
              }
            }
          }
        }
      }
    }
    }
   }

  {
    $fn=sides;
    cylinder(r1=r_size, r2=r_size, h=0.1, center=false);
  }
  rotate([0, 0, degrees]){
    translate([(r_size + r_size * ratio), 0, 0]){
      rotate([0, 0, (degrees - 90)]){
        union(){
          translate([0,line_sz, 0]){
            translate([0, (-(r_size * ratio)), 0]){
              {
                $fn=sides;
                color([0.93,0,0]) {
                  cylinder(r1=line_sz, r2=line_sz, h=0.3, center=false);
                }
              }
            }
          }
          {
            $fn=sides;
            color([1,0.8,0]) {
              cylinder(r1=(r_size * ratio), r2=(r_size * ratio), h=0.1, center=false);
            }
          }
        }
      }
    }
  }
}
