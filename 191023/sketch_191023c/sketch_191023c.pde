//X座標
float posX;
//Y座標
float posY;
//速度
float speed;
//角度を保存する変数
float theta;
//極座標の為の半径
float radius;

void setup(){
  size(500,500);
  //フレームレートの変更
  frameRate(60);
  background(0);
  //初期値は画面の中央
  posX = width/2;
  posY = height/2;
  speed = 2.0;
  theta = 0;
  radius = 200;
}

void draw(){
  //background(0);
  fill(0,20);
  rect(0,0,width,height);
  
  //画面のY座標起点を中央に下げる
  translate(0,height/2);
  
  //線なし
  noStroke();
  //塗り
  fill(0,255,255);
  
  // 三角関数は -1 ~ +1の間の値を返す
  float posY = radius * sin(radians(theta));
  println(posY);
 
  //円を描画
  ellipse(posX,posY,40,40);
  
  //現在のX座標に速度を足す
  posX = posX + speed;
  //もしposXが画面幅を超えたら
  if(posX > width){
    posX = 0;
  }
  
  //角度を1度ずつ増やす
  theta = theta + 2;
  
  //もしthetaが360度を超えたら
  if(theta > 360){
    theta = 0;
  }
}
