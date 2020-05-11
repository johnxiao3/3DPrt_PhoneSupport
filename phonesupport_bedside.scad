ph_inner_l = 68;
ph_inner_w = 8.5;
ph_inner_h = 95;

ph_fullH = 138;

thick = 5;

charge_w = 5.5;
charge_l = 9;


module phone_container(){
    union(){
        difference(){
            cube([ph_inner_l+2*thick,
              ph_inner_w+2*thick,
              ph_inner_h+thick]);
            union(){
              translate([thick,thick,thick])
              cube([ph_inner_l,ph_inner_w,ph_inner_h+thick]);
              translate([thick+0.5*ph_inner_l,
                        thick+0.5*ph_inner_w,0])
              cube([charge_l,charge_w,3*thick],true);
            }
            
        }
        translate([0,ph_inner_w+thick,0])
        cube([ph_inner_l+2*thick,thick,ph_fullH+thick]);
    }
}



side_thick = 16;
top_thick = 20;
length = 40;
module phone_holder(){
	translate([0,ph_inner_w+2*thick,ph_fullH])
	cube([ph_inner_l+2*thick,length,thick]);
	
	translate([0,ph_inner_w+2*thick+side_thick,ph_fullH-2])
	cube([ph_inner_l+2*thick,length-side_thick,thick]);
	
	translate([0,ph_inner_w+2*thick,ph_fullH-thick-length])
	cube([thick,length,length+thick]);

	
	translate([0,ph_inner_w+2*thick+side_thick,ph_fullH-top_thick-thick])
	cube([ph_inner_l+2*thick-20,length-side_thick,thick]);
	
	translate([0,ph_inner_w+2*thick+side_thick,ph_fullH-length-thick])
	cube([ph_inner_l+2*thick-20,thick,length-top_thick]);
}


phone_container();
phone_holder();