// ボタンに接続したピンの番号
int a0 = 0;
int a2 = 2;


// ボタンの状態を表す変数
int bAState = 0;
int bBState = 0;

void setup() {
  Serial.begin(9600);
  while(!Serial);
}

void loop() {
    // ボタンに接続したピンの状態を読み取る
    bAState = digitalRead(a0);
    bBState = digitalRead(a2);

    Serial.print(bAState);
    Serial.print(",");
    Serial.print(bBState);
    delay(100);
}
