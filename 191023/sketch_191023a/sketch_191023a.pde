//グローバル変数
float posX; //x座標
float speedX; //スピード

//初期設定
void setup() {
  size(500, 500);
  smooth();
  posX = width/2; //xの初期位置
  speedX = 2; //スピードの値
}


//メインループ
void draw(){
  background(0);
  noStroke();
  fill(255);
  ellipse(x,250,50,50);
  posX = posX + speedX; // xの現在地にスピードの値を足していく
  
  // もしx座標が画面サイズ以上になったらxの座標を0に戻す
  if (posX >= width) {
      posX = -50;
  }
}
