int stepX;
int stepY;

void setup(){
  size(800, 400);
  background(0);
}

void draw(){
  noStroke();
  colorMode(HSB, width, height, 100);
  stepX = mouseX+2;
  stepY = mouseY+2;
  for (int y=0; y<height; y+=stepY){
    for (int i=0; i<width; i+=stepX){
      fill(i, height-y, 100);
      rect(i, y, stepX, stepY);
    }
  }
}
