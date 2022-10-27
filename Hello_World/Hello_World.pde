//Global Variables
int appWidth, appHeight;
float centerHeight, centerWidth, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, cyan=#2DA7C4, green=#2DC46B;
float thick, thin;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(1920, 1080); //Use size for debugging
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
  centerWidth = width * 3/2;
  centerHeight = height * 1/20;
  xStart= centerWidth - (width * 1/40);
  yStart = centerHeight - (height * 1/40);
  widthRect = width * 1/20; 
  heightRect = height * 2/50;
    thick = appWidth * 1/70;
  thin =  appWidth * 1/140;
} //End setup
//
void draw() {
  background(225); //Gray Scale 0-255
  //random(a, b)
  background( color( random(0, 255), random(255), random(255) ) ); //color(r,g,b), Casting 
  //Night Mode
  background(black);
  //
  strokeWeight(thick); 
  stroke(green);
  fill(cyan);
  rect(xStart, yStart, widthRect, heightRect);
  //fill(white);
  //stroke(black);
  strokeWeight(1);
 rect(xStart,yStart,widthRect, heightRect); 
 line(50,50,1000,1000);
 line(50,1000,1000,50);
 line(1000,50,50,50);
 line(50,1000,50,50);
 line(1000,50,1000,1000);
 line(1000,1000,50,1000);
 triangle(1000,50,50,50,1000,250);
 triangle(50,1000,250,1000,50,50);

 } //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End Main Program
