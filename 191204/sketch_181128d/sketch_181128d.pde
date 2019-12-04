import processing.serial.*;

Serial port; //Arduinoとシリアル通信する変数
float val; // Arduinoからくる値を保存する変数

void setup() {
  // 自分のポート番号がSerial.list()配列の何番目かを調べる
  println(Serial.list());
  
  // Serial.list()[]の配列に自分のポート番目をいれる 
  String arduinoPort = Serial.list()[5];
  // 変数portにarduinoからの通信を繋ぐ　
  port = new Serial(this, arduinoPort, 9600);
  
  size(500,500);
  colorMode(HSB,360,100,100,100);
}

void draw() {
  background(0,0,100,100);

  // もしArduinoから値が届いていたら
   if (port.available() > 0) {
     // ポートの値をvalに保存
     val = port.read();
     val = map(val,0,255, 20,400);
     println(val);
   }

  noStroke();
  fill(45,100,100,100);
  ellipse(width/2,height/2,val,val);
}
