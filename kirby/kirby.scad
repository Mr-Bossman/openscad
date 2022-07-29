//!OpenSCAD

{
    $fn=50;
    /*translate([0,0,10]){
        sphere(10);
    }*/
    hull(){
        translate([0,0,0]){
            sphere(5);
        }
        translate([0,10,0]){
            scale([2,1,1]){
                sphere(2);
            }
        }
    }
}
