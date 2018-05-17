run("Size...", "width=512 height=672 depth=32 constrain average interpolation=None");
run("Make Binary", "method=Otsu background=Dark black");
run("Fill Holes (Binary/Gray)");
run("Distance Transform Watershed 3D", "distances=[Borgefors (3,4,5)] output=[16 bits] normalize dynamic=2 connectivity=6");
run("Size...", "width=1024 height=1344 depth=32 constrain average interpolation=None");