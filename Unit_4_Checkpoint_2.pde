// Global Variables
color lightbrown = #C4A484; 
color black = #000000;
color lightblue = #ADD8E6;
color beige = #F5F5DC;

void setup() {
  size(800, 600);
  background(lightblue);
  
  int x, y;
  x = 50;
  y = 50;
  
  while (y < 550) {  // Vertical grid
    while (x < 800) {  // Horizontal grid
      house(x, y, 0.25); // x,y,scale factor
      x = x + 150;
    }
    x = 50;
    y = y + 150;
  }
}

void draw() {
}

void house(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  
  // Random colors
  color wallColor = color(random(100, 255), random(100, 255), random(100, 255));
  color roofColor = color(random(50, 200), random(50, 150), random(50, 100));
  color doorColor = color(random(150, 255), random(150, 255), random(150, 255));
  color windowColor = color(random(200, 255), random(200, 255), random(200, 255));
  
  walls(wallColor);
  roof(roofColor);
  
  // Door 
  int doorX = 75;
  while (doorX <= 200) {
    door(doorX, 200, doorColor);
    doorX = doorX + 125;
  }
  
  windows(windowColor);
  
  popMatrix();
}

void walls(color wallColor) {
  fill(wallColor);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 300, 300);
}

void roof(color roofColor) {
  fill(roofColor);
  strokeWeight(2);
  
  // Roof while loop 
  int i = 0;
  while (i <= 300) {
    if (i == 0 || i == 300) {
      triangle(0, 0, 150, -150, 300, 0);
    }
    i = i + 300;
  }
}

void door(float x, float y, color doorColor) {
  fill(doorColor);
  strokeWeight(3);
  rect(x, y, 50, 100);
}

void windows(color windowColor) {
  fill(windowColor);
  stroke(black);
  strokeWeight(2);
  
  // Windows 
  int wx = 25;
  while (wx <= 200) {
    rect(wx, 50, 75, 75);
    line(wx, 87.5, wx + 75, 87.5); 
    line(wx + 37.5, 50, wx + 37.5, 125);
    wx = wx + 175;
  }
}
