//グローバル変数
int posX;
int posY;
int speedX;
int speedY;
int diameter; //直径

void setup(){
  size(500,500);
  //初期値
  posX = width/2;
  posY = height/2;
  speedX = 2;
  speedY = 4;
  diameter = 40;
}

void draw(){
  background(0);
  stroke(255);
  line(width/2,0,width/2,height);
  
  //座標の更新
  posX = posX + speedX;
  posY = posY + speedY;
  //跳ね返り
  if(posX > width || posX < 0){
    speedX = speedX * -1;
  }
  if(posY > height || posY < 0){
    speedY = speedY * -1;
  }
  
  //図形の描画
  noStroke();
  fill(255,0,0);
  //もしposXが真ん中より小さかったら
  if(posX <= width/2){
    
    ellipse(posX, posY, diameter, diameter);
  } else {
    
    rectMode(CENTER);
    rect(posX,posY,diameter, diameter);
  }
}
