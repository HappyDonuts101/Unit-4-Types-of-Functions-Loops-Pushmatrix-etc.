// Color palette
color spaceBlue = #0A0F2B;
color starWhite = #F8F8FF;
color rocketRed = #FF0000;
color exhaustYellow = #FFFF00;
color cometColor = #ADD8E6;

void setup() {
  size(1200, 800);
  background(spaceBlue);
  
  // Draw 1000 stars (very simple approach)
  int starCount = 0;
  while (starCount < 1000) {
    float starX = random(width);
    float starY = random(height);
    float starSize = random(0.5, 3);
    
    // Make 5% of stars bigger and brighter
    if (random(100) > 95) {
      starSize = random(3, 6);
      fill(255, 255, 200);
    } else {
      fill(starWhite);
    }
    
    noStroke();
    circle(starX, starY, starSize);
    starCount++;
  }
  
  // Draw nebula clouds (simple repeated circles)
  int cloudCount = 0;
  while (cloudCount < 30) {
    float cloudX = random(width/3);
    float cloudY = random(height);
    float cloudSize = random(50, 200);
    
    // Draw each cloud as 3 overlapping circles
    fill(150, 150, 200, 20);
    circle(cloudX, cloudY, cloudSize);
    circle(cloudX+20, cloudY-10, cloudSize*0.8);
    circle(cloudX-15, cloudY+15, cloudSize*0.7);
    
    cloudCount++;
  }
  
  // Draw 10 rockets (very basic shapes)
  int rocketCount = 0;
  while (rocketCount < 10) {
    float rocketX = random(width/3);
    float rocketY = random(height);
    float rocketScale = random(0.2, 0.5);
    
    pushMatrix();
    translate(rocketX, rocketY);
    scale(rocketScale);
    
    // Rocket body
    fill(rocketRed);
    rect(0, -80, 30, 80, 3);
    triangle(0, -80, 15, -120, 30, -80);
    
    // Window
    fill(spaceBlue);
    circle(15, -50, 10);
    
    // Fins
    triangle(0, 0, -15, 30, 0, 25);
    triangle(30, 0, 45, 30, 30, 25);
    
    // Exhaust flame
    fill(exhaustYellow);
    beginShape();
    vertex(5, 0);
    vertex(25, 0);
    vertex(15, 60);
    endShape();
    
    // Exhaust particles
    fill(exhaustYellow);
    circle(10, 30, 4);
    circle(20, 40, 3);
    circle(15, 50, 5);
    
    popMatrix();
    rocketCount++;
  }
  
  // Draw 5 comets (simple shapes)
  int cometCount = 0;
  while (cometCount < 5) {
    float cometX = random(width/3);
    float cometY = random(height);
    
    pushMatrix();
    translate(cometX, cometY);
    
    // Comet tail
    fill(cometColor, 150);
    ellipse(-30, 0, 60, 10);
    ellipse(-60, 0, 40, 8);
    
    // Comet head
    fill(starWhite);
    circle(0, 0, 15);
    fill(255, 255, 255, 100);
    circle(0, 0, 25);
    
    popMatrix();
    cometCount++;
  }
  
  // Draw right side planets (simple grid)
  int rowCount = 0;
  while (rowCount < 6) {
    int colCount = 0;
    while (colCount < 6) {
      float planetX = 600 + colCount * 100;
      float planetY = 100 + rowCount * 120;
      float planetSize = random(30, 80);
      
      pushMatrix();
      translate(planetX, planetY);
      
      // Planet body
      fill(random(100, 255), random(100, 255), random(100, 255));
      circle(0, 0, planetSize);
      
      // Planet details
      fill(random(50, 200), random(50, 200), random(50, 200));
      circle(-10, -10, 8);
      circle(15, 5, 12);
      circle(-5, 15, 6);
      
      // Optional ring
      if (random(1) < 0.3) {
        noFill();
        stroke(200, 200, 255, 150);
        strokeWeight(3);
        ellipse(0, 0, planetSize*2, 10);
        noStroke();
      }
      
      popMatrix();
      colCount++;
    }
    rowCount++;
  }
}
