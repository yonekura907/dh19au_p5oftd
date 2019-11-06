// 角度
int theta = 0;

void setup(){
  size(500,500);
  background(0);
}



void draw(){
  background(0);
  noStroke();

  rectMode(CENTER); // 四角形を中央起点


  // 座標変換　0-0起点を中心に移動
  translate(width/2,height/2);

  fill(0,0,255);
  rect(0,0,300,300);

  // ここで一旦座標を保存 回転していない
  pushMatrix();

  rotate(radians(theta)); // 座標変換の回転


  fill(0,255,0); // 塗り　黄緑
  rect(0,0,200,200); // 四角形

  // ここで座標系を元に戻す
  popMatrix();

  // 赤い四角形
  fill(255,0,0);
  rect(0,0,100,100);


  theta = theta + 1;
  if(theta > 360){
    theta = 0;
  }
  println(theta);
}
