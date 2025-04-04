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
  //house (300,200);
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
