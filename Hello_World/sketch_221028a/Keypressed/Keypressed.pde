//global Variables
Boolean nightMode=false;
//
void setup() {}
//
void draw() {
  if ( nightMode==true)println ("I am nocturnal.");
  if ( nightMode==false)println("");
}//
void keyPressed() {
  if(key=='N'|| key='n' ) nightMode=true;
  if(key==CODED && keyCode==LEFT) nightMode=false;
}
//
void mousePressed() {}
//
//END MAIN PROGRAM
