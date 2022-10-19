//Global Variables
void setup() {
int appWidth, appHeight;
//
//Declare Geometry Square, landscape, portrait
size(100, 1800);
appWidth = width;
appHeight = height;
String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phone";
String orientation = ( width > height ) ? ls : p;
println (DO, orientation);
//
println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
println("Display Monitor:", "\tWidth="+displayWidth, "& Height="+ displayHeight);
//
//Fit CANVAS into Display Monitor
if (width > displayWidth) appWidth = 0; //CANVAS will not fit
if ( height > displayHeight ) appHeight = 0; //CANVAS= height will not fit
if ( appWidth != 0 && appHeight != 0) print("Display Geometry is Good to Go.");
if ( appWidth == 0 || appHeight == 0 ) println("Stop, You've violated the Geometry!");
} //End setup
//
void draw() {} //End draw 
//
void keyPressed() {} //End keyPressed
// 
void mousePressed() {} //End mousePressed
//
// End Main Program
