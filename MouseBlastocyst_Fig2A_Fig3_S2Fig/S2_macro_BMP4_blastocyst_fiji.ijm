run("Size...", "width=256 height=336 depth=172 constrain average interpolation=None");
run("Subtract Background...", "rolling=13 stack");
run("Gaussian Blur 3D...", "x=3 y=3 z=3");
run("Make Binary", "method=Otsu background=Dark black");
run("Fill Holes (Binary/Gray)");
run("Distance Transform Watershed 3D", "distances=[Borgefors (3,4,5)] output=[16 bits] normalize dynamic=1 connectivity=6");
run("Size...", "width=1024 height=1344 depth=172 constrain average interpolation=None");