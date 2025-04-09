color lightbrown = #C4A484; 
color black = #000000;
color lightblue=#ADD8E6;
color beige = #F5F5DC;

void setup () {
  size(800,600);
}
void draw() {
  background(lightblue);
  house(200,200); //x,y
  house (300,200);
  house(400,200);
  house(500,200);
}

void house(int x, int y) {
  pushMatrix();
  
  translate(x,y);
  
  Mainbody();
 Roof();
  Door(75,200);//Left
  Door(200,200); //Right
  Windows();
  
  
  popMatrix();
  
}

void Mainbody() {
  fill(lightbrown);
  stroke(black);
  strokeWeight(3);
  rect (0,0, 300,300);
  }
  
  void Roof() {
    strokeWeight(2);
    triangle(0,0, 150,-150,300,0);
 }
  
void Door(int x, int y) {
  fill (beige);
  strokeWeight(3);
  rect(x, y, 50,100);
  rect(x,y,50,100);
  stroke(black);
}

void Windows() {
  fill(beige);
  stroke(black);
  strokeWeight(2);
  
  // Left window
  rect(25, 50, 75, 75);
  line(25, 87.5, 100, 87.5); 
  line(62.5, 50, 62.5, 125); 
  
  // Right window
  rect(200, 50, 75, 75);
  line(200, 87.5, 275, 87.5); 
  line(237.5, 50, 237.5, 125); 
}
