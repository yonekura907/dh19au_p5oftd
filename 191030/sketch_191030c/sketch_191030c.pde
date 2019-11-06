float posX;
float posY;
float speedX;
int diameter;

void setup(){
  size(500,500);
  posX = width/2;
  posY = height/2;
  diameter = 40;
  speedX = 1;
}

void draw(){
  background(0);
  noStroke();
  
  //座標の更新
  posX = posX + speedX;
  if(posX > width + diameter){
    posX = -diameter;
  }
  println(mouseY);
  //map関数 0~500の値を0~10に変換する
  speedX = map(mouseY,0,500,1,10);
  
  //図形の描画
  fill(255,0,0);
  ellipse(posX,posY,diameter,diameter);
}
