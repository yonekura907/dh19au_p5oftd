//グローバル変数
float posX; //x座標
float posY; //y座標
int speedX; //xのスピード
int speedY; //Yのスピード

//初期設定
void setup() {
  size(500, 500);
  posX = 250; //xの初期位置
  posY = 250; //yの初期位置
  speedX = 2; //Xスピードの値
  speedY = 4; //Yスピードの値
  noStroke();
}

//メインループ
void draw(){
  background(0);
  fill(255);
  ellipse(posX,posY,50,50);
  posX = posX + speedX; // xの現在地にスピードの値を足していく
  posY = posY + speedY;
  if (posX >= width || posX < 0 ) {
      speedX = -1 * speedX;
  }
  if (posY >= height || posY < 0 ) {
      speedY = -1 * speedY;
  }
}
