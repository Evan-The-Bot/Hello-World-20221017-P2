  //global Variables
  Boolean nightMode=false, ahhh=false;
  //
  void setup() {}
  //
  void draw() {
    if (nightMode==false) println(" I am nocturnal.");
    if (nightMode==false) println("")
    if ( ahhh==true ) println("Where is the button");
  }//End draw
  void keyPressed() {}
  //
  void mousePressed() {
    if(mouseButton == LEFT ) nightMode = true;
    if(mouseButton == RIGHT ) nightMode = false;
    if(mouseButton == CENTER ) { 
    ahhh = true;
  } else {
    ahhh = false;
  nightMode = true;
}
//
//END MAIN PROGRAM
