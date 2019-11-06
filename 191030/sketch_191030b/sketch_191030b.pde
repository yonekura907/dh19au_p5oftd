//グローバル変数
int posX;
int posY;
int speedX;
int speedY;
int diameter; //直径
float lineX1;
float lineX2;

void setup(){
  size(500,500);
  //初期値
  posX = width/2;
  posY = height/2;
  speedX = 2;
  speedY = 4;
  diameter = 40;
  //三等分の線のX座標
  lineX1 = width/3;
  lineX2 = lineX1*2;
}

void draw(){
  background(0);
  stroke(255);
  //三等分の先のX座標
  line(lineX1,0,lineX1,height);
  line(lineX2,0,lineX2,height);
  
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
  
  //もしposXが真ん中より小さかったら
  if(posX <= lineX1){  
    fill(255,0,0);
    ellipse(posX, posY, diameter, diameter);
  } else if(posX > lineX2) {
    fill(0,255,0);
    rectMode(CENTER);
    rect(posX,posY,diameter, diameter);
  } else {
    fill(0,0,255);
    triangle(posX+diameter/2*cos(radians(30)),posY+diameter/2*sin(radians(30)),posX+diameter/2*cos(radians(150)),posY+diameter/2*sin(radians(150)),posX+diameter/2*cos(radians(270)),posY+diameter/2*sin(radians(270)));
  } 
}
