//Global Variables
int appWidth, appHeight;
float centerHeight, centerWidth, xStart, yStart, widthRect, heightRect;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(1000, 1000); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct=" turn your phone";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  //
  //If ORIENTATION is wrong ... feedback to change it
  //Fit CANVAS into Display Monitor
  if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
  if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
  if ( appWidth != 0 && appHeight != 0 ) print("Display Geometry is Good to Go.");
  if ( appWidth == 0 || appHeight == 0 ) println("Stop you have violated the geometry");
    
  //population
  centerWidth = width * 1/2;
  centerHeight = height * 1/2;
  xStart= centerWidth - (width * 1/4);
  yStart = centerHeight - (height * 1/4);
  widthRect = width * 1/2; 
  heightRect = height * 1/2;
} //End setup
//
void draw() {
 rect(xStart,yStart,widthRect, heightRect); 
 //line(50,50,500,500);
 //line(50,500,500,50);
 //line(500,50,50,50);
 //line(50,500,50,50);
 //line(500,50,500,500);
 //line(500,500,50,500);
 triangle(260,50,50,50,260,260);
 triangle(50,260,260,260,50,50);

 } //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End Main Program
