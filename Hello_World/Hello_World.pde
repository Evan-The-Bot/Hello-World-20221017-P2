//globalVaribles
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, purple=#FA00F6, yellow=#F8FC64;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096;
float thick, thin;
Boolean grayScale=false, randomColour=false, blackBackground=false, nightMode=false;
//
void setup() {
  //
  size(700, 400);
  appWidth = width;
  appHeight = height;
  //
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bro, turn your phone";
  if ( appWidth < appHeight ) {
    println(instruct);
  } else {
    if ( appWidth > displayWidth ) appWidth = 0;
    if ( appHeight > displayHeight ) appHeight = 0;
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geometry is Good to Go.");
    } else {
      println("Stop you have violated the geometry");
    }
  }
  //
 
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - ( appWidth * 1/24 ) ;
  yStart = centerHeight - ( appHeight * 2/40 ) ;;
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/7;
  thin =  appWidth * 1/40;
} //End setup
//
void draw() {
  if ( grayScale == true ) background(225);

  if ( randomColour == true ) background( color( random(0, 255), random(255), random(255) ) ) ;
  
  if ( blackBackground == true ) background(black);
  //
  strokeWeight(thick); 
  //
  if ( nightMode == true )
  {
    stroke(yellowNightMode);
    fill(purpleNightMode);
  } else
  {
    stroke(yellow);
    fill(purple);
  }
  rect(xStart, yStart, widthRect, heightRect);

  fill(white);
  stroke(black);
  strokeWeight(1);
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
void keyPressed() {
  if ( key=='A' || key=='a' ) grayScale = true;
  if ( key=='S' || key=='s' ) randomColour = true;
  if ( key=='W' || key=='w' ) blackBackground = true;
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
