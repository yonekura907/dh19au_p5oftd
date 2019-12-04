void setup(){
  size(500,500);
  background(255);
  //関数の実行
  makeRobot(250,250);
}

void draw(){
  //background(255);
  //関数の実行
  //makeRobot(mouseX,mouseY);
  int result = calc(10,20);
  println(result);
}

//足し算機
int calc(int numA, int numB){
  int add = numA + numB;
  //値の返す、値を戻す
  return add;
}

//自作の関数 レシピ
void makeRobot(int posX, int posY){
  noStroke();
  fill(randomColor(10,50));
  rectMode(CENTER);
  rect(posX,posY,200,200);
  fill(randomColor(200,300));
  ellipse(posX-50,posY,50,50);
  ellipse(posX+50,posY,50,50);
  fill(randomColor(100,200));
  rect(posX,posY+70,150,20);
}

//ランダムな色を返す関数
color randomColor(int hueA, int hueB){
  //カラーモードを変更 色相・彩度・明度
  colorMode(HSB,360,100,100);
  color resultColor = color(random(hueA,hueB),100,100);
  return resultColor;
}
