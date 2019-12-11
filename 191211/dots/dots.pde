//配列の上限数
int num = 300;
//座標の配列
float[] posX = new float[num];
float[] posY = new float[num];
//スピードの配列
float[] speedX = new float[num];
float[] speedY = new float[num];
//円の直径の配列
float[] diameter = new float[num];
//色の配列
int[] hue = new int[num];

void setup(){
  size(800,800);
  noStroke();
  //配列を初期化
  for(int i=0; i<num; i++){
    posX[i] = width/2;
    posY[i] = height/2;
    speedX[i] = random(-8,8);
    speedY[i] = random(-8,8);
    diameter[i] = random(8,60);
    hue[i] = (int) random(0,360);
  }
}

void draw(){
  background(0);
  noStroke();
  //色相彩度明度に変更
  colorMode(HSB,360,100,100,100);
  
  //300個分の描画
  for(int i=0; i<num; i++){
    //XY座標の移動
    posX[i] = posX[i] + speedX[i];
    posY[i] = posY[i] + speedY[i];
    //跳ね返り
    if(posX[i] > width || posX[i] < 0){
      speedX[i] = speedX[i] * -1;
    }
    if(posY[i] > height || posY[i] <0){
      speedY[i] = speedY[i] * -1;
    }
    //円の描画
    fill(hue[i],100,100,50);
    ellipse(posX[i],posY[i],diameter[i],diameter[i]);
  }
}
