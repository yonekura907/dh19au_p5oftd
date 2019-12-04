//ボタンの登録
int button = 2;

//LEDに接続したピン番号
int led = 13;


//ボタンの状態を見る変数
int buttonState = 0;

void setup() {
  //LEDのピンをArduinoにセット
  pinMode(led, OUTPUT);
  //ボタンをセット
  pinMode(button, INPUT);
}

void loop() {
  //ボタンの状態を読み取る
  buttonState = digitalRead(button);

  //もしボタンの状態がHIGHだったら
  if(buttonState == HIGH){
    //デジタル出力
    digitalWrite(led, HIGH);
  } else {
    //デジタル出力OFF
  digitalWrite(led, LOW);
  }
  
}
