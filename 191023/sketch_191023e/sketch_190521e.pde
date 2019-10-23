//X座標
float posX;
//Y座標
float posY;
//速度
float speed;
//角度を保存する変数
float theta;
//三角関数の為の半径
float radius;

void setup(){
  size(500,500);
  background(0);
  //初期値は画面の中央
  posX = width/2;
  posY = height/2;
  speed = 1.0;
  theta = 0;
  radius = 10;
}

void draw(){
  //background(0);
  fill(0,10);
  rect(0,0,width,height);
  
  //座標起点を中心に変更
  translate(width/2,height/2);
  
  //線なし
  noStroke();
  //塗り
  fill(0,255,255);
  
  // 三角関数は-1から+1の間を返す
  float posY = radius * sin(radians(theta));
  float posX = radius * cos(radians(theta));
  
  //円を描画
  ellipse(posX,posY,20,20);
  
  //角度を1度ずつ増やす
  theta = theta + speed;
  println(theta);
  
  //thetaが360度を超えたら0に戻す
  if(theta > 360){
    theta = 0;
  }
  
  //マウスのX座標を円の半径
  radius = map(mouseX,0,width,50,250);
  
  //マウスのY座標を角度
  speed = map(mouseY,0,500,1.0,8.0);
}
