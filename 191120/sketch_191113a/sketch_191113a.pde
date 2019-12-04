import processing.sound.*;

//音データを保存する変数
SoundFile se1;
SoundFile se2;
SoundFile se3;

//シーンを切り替える変数
int scene;
int sc2X;

float sc0X1;
float sc0X2;
float sc0Y1;
float sc0Y2;

float sc1X1;
float sc1X2;
float sc1Y1;
float sc1Y2;
//色相の変数
int hue;
int green;
int red;

//三角形の角度と半径
int angle;
int radius1;

void setup(){
  size(1280,720);
  se1 = new SoundFile(this,"bubbles.mp3");
  se2 = new SoundFile(this,"strike.mp3");
  se3 = new SoundFile(this,"splits.mp3");
  //最初のシーン
  scene =0;
  sc1Y2= width/2;
  
  colorMode(HSB,360,100,100);
  noStroke();

}

void draw() {
  //何もないときはランダムイルミ
  background(248,91,0);
  noStroke();
    fill((int)random(360),100,100,127);
  sc0X1= random(width);
  sc0X2 = random(width);
  sc0Y1 = random(height);
  sc0Y2 = random(height);
  float diameter = random(50,100);
  ellipse(sc0X1, sc0Y1, diameter,diameter);
  ellipse(sc0X2, sc0Y2, diameter,diameter);
  //雪
  if(scene==1){
    noStroke();
    fill((int)random(170,200),(int)random(100),100,25);
    sc1X1= random(width);
    sc1X2 = random(width);
    diameter = random(50,150);
    crystal(sc1X1, sc1Y1, diameter);
    if(sc1Y1 <= width){
      sc1Y1 +=20;
    }else{
       sc1Y1 =0;
    }
    crystal(sc1X2, sc1Y2, diameter);
    if(sc1Y2 <= width){
      sc1Y2 +=20;
    }else{
       sc1Y2=0;
    }
  }
  // プレゼントボックス
  if(scene==2){
    box();
    sc2X += 20;
  }
  // ツリー
  if(scene==3){
    fill(green,100,100,127);
    strokeWeight(40);
    translate(width/3,height/3);
    rotate(radians(angle));
    radius1 +=5; //半径大きく
    tree();
    translate(width/3,-400);
    tree();
  }
}

//キーを押したとき
void keyPressed(){
  //型変換
  hue = (int)random(360);
  green =(int)random(130,150);
  red = (int)random(0,20);
  if(key == 'a'){
    scene = 1;
    se1.play();
  }
  if(key == 's'){
    scene = 2;
    se2.play();
    sc2X = -300;
  }
  if(key == 'd'){
    scene = 3;
    se3.play();
    angle =0;
    radius1 =0;
  }
}

//雪の結晶
void crystal(float x, float y, float r) {
  noStroke();
  fill(240,0,100);
  pushMatrix();
  translate(x, y);
  hexagon(0, 0, 0.5*r);
  for (int i = 0; i < 6; i++) {
    hexagon(0.75*r*cos(radians(60*i)),
            0.75*r*sin(radians(60*i)),
            0.25*r);
  }
  popMatrix();
}

//六角形
void hexagon(float x, float y, float r) {
  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < 6; i++) {
    vertex(r*cos(radians(60*i)),
           r*sin(radians(60*i)));
  }
  endShape(CLOSE);
  popMatrix();
}

//クリスマスツリー
void tree(){
  triangle(radius1*cos(radians(30)),radius1*sin(radians(30)),radius1*cos(radians(150)),radius1*sin(radians(150)),radius1*cos(radians(270)),radius1*sin(radians(270)));
  translate(0,200);
  triangle(radius1*1.2*cos(radians(30)),radius1*1.2*sin(radians(30)),radius1*1.2*cos(radians(150)),radius1*1.2*sin(radians(150)),radius1*1.2*cos(radians(270)),radius1*1.2*sin(radians(270)));
  translate(0,200);
  triangle(radius1*1.3*cos(radians(30)),radius1*1.3*sin(radians(30)),radius1*1.3*cos(radians(150)),radius1*1.3*sin(radians(150)),radius1*1.3*cos(radians(270)),radius1*1.3*sin(radians(270)));
}

//プレゼントボックス
void box(){
  fill(red,100,100);
  rect(sc2X,height/2,width/4,height);
  fill(green,100,100);
  rect(sc2X+width/8-10,height/2,20,height/2);
  rect(sc2X,height*3/4,width/4,20);
  //triangle(sc2X*cos(radians(30)),sc2X*sin(radians(30)),sc2X*cos(radians(150)),sc2X*sin(radians(150)),radius1*cos(radians(270)),radius1*sin(radians(270)));
  
}
