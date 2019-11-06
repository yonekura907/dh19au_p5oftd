float speed;
int diameter;
float theta; //円の角度
float radius; //回転の半径
float hue; //色相
void setup(){
  size(500,500);
  diameter = 40;
  speed = 1;
  radius = 200;
  theta = 0;
  hue = 0;
}

void draw(){
  //background(0);
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  //座標変換
  translate(width/2,height/2);
   //rect(0,0,10,10);
  
  //座標の更新
  float posX = radius * cos(radians(theta));
  float posY = radius * sin(radians(theta));
  //角度にスピードを足す
  theta = theta + speed;

  println(mouseY);
  //map関数 0~500の値を0~10に変換する
  speed = map(mouseY,0,500,1,10);
  radius = map(mouseX,0,500,20,250);
  hue = map(mouseY,0,500,0,360);
  colorMode(HSB,360,100,100,100);
  
  //図形の描画
  fill(hue,100,100,100);
  ellipse(posX,posY,diameter,diameter);
}
