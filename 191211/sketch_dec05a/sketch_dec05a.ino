int sensor = 0; //可変抵抗器のピン
int sensorVal = 0; //可変抵抗器の値を保存する変数

int led = 9; //LEDのピン
int ledVal = 0; // LEDに送る値

void setup() {
  pinMode(led,OUTPUT);
}

void loop() {
  sensorVal = analogRead(sensor); //可変抵抗器の値を読む
//  Serial.println(val);
  //可変抵抗器の0-1023の値を0-255に変換
  ledVal = map(sensorVal,0,1023,0,255); 

  //シリアル送信 Processingに送る
  Serial.write((byte)ledVal);

  // LEDにmapValを書き込み
  analogWrite(led, ledVal);
  
  delay(100);
}
