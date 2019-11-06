void setup(){
    size(500,500);
    background(255);
    colorMode(HSB,360,100,100);
}

void draw(){
  noStroke();
    // 初期値0、10未満まで、1ずつ増える
    for(int y=0; y < height; y+=20){
      // 初期値0、10未満まで、1ずつ増える
      for(int x=0; x < width; x+=20){
        // fill(x*10, 10+ y*10, 100);
        // int hue = (int) map(mouseX,0,width,0,36);
        int hue = (int) map(mouseX,0,width,1,180);
        int sat = (int) map(mouseY,0,height,100,10);
        fill(hue + (x/4), sat + (y/4),100,100);
        rect(x,y,100,100);
      }
    }
}
