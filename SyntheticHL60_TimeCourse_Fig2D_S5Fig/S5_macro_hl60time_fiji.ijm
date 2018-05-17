run("Size...", "width=319 height=174 depth=59 constrain average interpolation=Bilinear");
run("Gaussian Blur 3D...", "x=2 y=2 z=2");
setOption("BlackBackground", true);
run("Make Binary", "method=Otsu background=Dark black");
run("Fill Holes", "stack");
run("Distance Transform Watershed 3D", "distances=[Borgefors (3,4,5)] output=[16 bits] normalize dynamic=2 connectivity=6");
run("Size...", "width=639 height=349 depth=59 constrain average interpolation=None");
