import processing.serial.*;

Serial port; //Arduinoとシリアル通信する変数
float value = 0; // Arduinoからくる値を保存する変数
int mapValue = 0;

void setup() {
  size(500,500);
  background(255);
  
  // 自分のポート番号がSerial.list()配列の何番目かを調べる
  println(Serial.list());
  
  // Serial.list()[]の配列に自分のポート番目をいれる 
  String arduinoPort = Serial.list()[5];
  
  // 変数portにarduinoからの通信を繋ぐ　
  port = new Serial(this, arduinoPort, 9600);
}

void draw() {
  background(255);
  
  // もしArduinoから値が届いていたら
  if (port.available() > 0) {
     // ポートの値をvalに保存
     value = port.read();
     mapValue = (int)map(value,0,255, 20,500);
     println(mapValue);
  }
   
  colorMode(HSB,360,100,100,100);
  noStroke();
  fill(45,100,100,100);
  ellipse(width/2,height/2,mapValue,mapValue);
}
