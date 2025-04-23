//WHILE LOOPS

//Global Variables useful for being everywhere and accessible and modifiable everywhere. Problem is that there could be too many global variables.
color beige = #fdf0d5;
color red = #c1121f;
color black = #000000;
color blue = #669bbc;

void setup() {
  size(800, 600);  // Creates an 800x600 pixel drawing canvas
   background(beige);
   
   int x,y;
 x=50;
 y=50; 
  while(y<650) {
    face(x,y,0.25); //x,y,scale factor
    x=x+150;
    if(x >= 800) {
     x=50;
     y=y+150;
    }
  }
 
}
//float x;//we use float to store decimal numbers example if we made float a and int b we cannot do b=b+a;

void draw() {
  //face(random(100,500), random(100,500), random(0.25,1)); //x,y,scale factor  we shouldn't put in draw it will glitch constatnly since it draws every 1/60th a second. 
  //instead put it in the setup
}

void face(float x, float y, float s) { // parameter variables:only exsists in this function, parameter variable takes priority. 
  pushMatrix();    // Saves the current coordinate system (origin at top-left corner)
  translate(x,y);  // Shifts all subsequent drawing by (x,y) pixels
    scale(s); //automatically adjusts face function size, everything below it. Outside coordinates stay the same. Can also use it as decimals.
    //Rotates shapes around the origin (after translate()).PI/4 = 45°, PI/2 = 90°, TWO_PI = 360°.You can rotate entire drawings like the face by placing rotate() after translate().
    //rotate(PI/4); //Rotates shape by PIr2 = 360 

  skin();          // Draws skin relative to new origin (200,100)
  hair();          // Draws hair relative to new origin
  float r,g,b;
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  eye(100, 200,r,g,b);           // Left eye (positioned relative to face)
  eye(300, 200,r,g,b);           // Right eye (positioned relative to face)
  eye(200,100,r,g,b);  //add new eye if we want 
  mouth();         // Draws mouth relative to face position
  
  popMatrix();     // Restores original coordinate system (origin returns to top-left)
}

void skin() {
 fill(random(0,255),random(0,255),random(0,255));//randomizes color from 0-255 for r,g,andb 
 stroke(black);
 strokeWeight(3);
 rect(0, 0, 400, 400);
}

void hair() {
  strokeWeight(25);
  int x = 0;
  while (x <= 400) {
  line (x, -50, x, 50);
  x = x + 50;
  }
  
  strokeWeight(3);
  
}

void eye(int x, int y, float r, float g, float b) {
  fill(beige); 
  ellipse(x, y, 100, 50);
  fill(r,g,b);//randomize eye color, if we want the same color for every eye we add float variables.
  // fill(random(0,255),random(0,255),random(0,255));//randomize eye color
  circle(x,y,50);
  fill(black);
  circle(x,y,25);
  
}

void mouth() {
  fill(beige);
  rect(100, 250, 200, 100); //mouth
  line(100, 300, 300, 300); //teeth
  line(150, 250, 150, 350);
  line(200, 250, 200, 350);
  line(250, 250, 250, 350);
}
