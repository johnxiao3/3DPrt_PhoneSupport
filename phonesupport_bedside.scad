ph_inner_l = 68;
ph_inner_w = 8;
ph_inner_h = 95;

thick = 5;



difference(){
    cube([ph_inner_l+2*thick,
      ph_inner_w+2*thick,
      ph_inner_h+thick]);
    translate([thick,thick,thick])cube([ph_inner_l,ph_inner_w,ph_inner_h+thick]);
}
