// 可変抵抗器に接続したピンの番号
int sensor = 0;
int val = 0;
int mapVal = 0;

void setup() {
    // シリアル通信を開始
    Serial.begin(9600);
}

void loop() {
    // CDSセルに接続したピンの値を読み取る
    val = analogRead(sensor);
    // シリアルモニタまたはシリアルプロッタで確認できるよう、シリアルにプリント 
//    Serial.println(val);
    // 可変抵抗器の値を元にLEDの明るさを求める
    // 0~1023の入力を0~255の範囲にスケーリング
    mapVal = map(val, 0, 1023, 0, 255);
    Serial.write((byte)mapVal); // byteで値を送信
//    Serial.write(val);
    
    // 適度な間隔でデータを送信するため、次のループ開始までに100ms待つ
    delay(100);
}
