//Global Variables useful for being everywhere and accessible and modifiable everywhere. Problem is that there could be too many global variables.
color beige = #fdf0d5;
color red = #c1121f;
color black = #000000;
color blue = #669bbc;

void setup() {
  size(800, 600);  // Creates an 800x600 pixel drawing canvas
}
//float x;//we use float to store decimal numbers example if we made float a and int b we cannot do b=b+a;

void draw() {
  background(beige);
  face(100, 100, 0.5);  
  face(100, 400, 0.5);
  face(400, 100, 0.5);
  face(400, 400, 0.5);
}

void face(float x, float y, float s) { // parameter variables:only exsists in this function, parameter variable takes priority. 
  pushMatrix();    // Saves the current coordinate system (origin at top-left corner)
  translate(x,y);  // Shifts all subsequent drawing by (x,y) pixels
    scale(s); //automatically adjusts face function size, outside coordinates don't change
    rotate(PI/4); //Rotates shape by PIr2 = 360 

  skin();          // Draws skin relative to new origin (200,100)
  hair();          // Draws hair relative to new origin
  eye(100, 200);           // Left eye (positioned relative to face)
  eye(300, 200);           // Right eye (positioned relative to face)
  eye(200,100);  //add new eye if we want 
  mouth();         // Draws mouth relative to face position
  
  popMatrix();     // Restores original coordinate system (origin returns to top-left)
}

void skin() {
 fill(blue);
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

void eye(int x, int y) {
  fill(beige);
  ellipse(x, y, 100, 50);
  fill(red);
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
