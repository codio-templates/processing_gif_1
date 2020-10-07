int totalFrames = 120;
int counter = 0;
boolean record = false;

void setup() {
  size(600, 362);
}

void draw() {
  float percent = 0;
  if (record) {
    percent = float(counter) / totalFrames;
  } else {
    percent = float(frameCount % totalFrames) / totalFrames;
  }

  render(percent);
  if (record) {
    saveFrame("output/gif-"+nf(counter, 3)+".png");
    if (counter == totalFrames-1) {
      exit();
    }
    counter++;
  }
}

void render(float percent) {
  background(55);
  

  float angle = percent * TWO_PI;
  rectMode(CENTER);
  noFill();
  stroke(255);
  strokeWeight(1);
  
  for(int row = 0; row < 5; row++){
    for(int col = 0; col < 3; col++){
      push();
      int x = row * 119 + 62;
      int y = col * 119 + 62;
      translate(x, y);
      rotate(angle);
      float side = sin(angle) * 200;
      float len = map(side, -200, 200, 114, 200);
      square(0, 0, len);
      pop();
    }
  }
}
