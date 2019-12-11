import processing.sound.*;
import processing.serial.*;

Serial port; //シリアル型の変数
float val = 0; //Arduinoから受け取る値

float easing = 0.05; //イージング
float easeVal = 0; // イージングで滑らかにした値


SinOsc osc; //サイン波
float freq; //周波数
int noteNumber;

FFT fft; // 高速フーリエ変換
int bands = 1024; // FFTのサイズ


void setup(){
  size(512,512);
  background(0);
  
  //自分のポート番号を確認
  //println(Serial.list()); 5番
  String arduinoPort = Serial.list()[5]; //シリアルの箇所
  port = new Serial(this, arduinoPort, 9600); //Arduinoとの接続
  
  osc = new SinOsc(this); //サイン波の生成
  osc.play(); //再生
  
  freq = 440; //周波数の代入
  noteNumber = 60; //ド
  
  fft = new FFT(this, bands); // FFTを生成
  fft.input(osc); //オシレーターの値を周波数変換
}

void draw(){
  background(0);
  
  // もしArduinoから値が届いていたら
  if(port.available() > 0){
    val = port.read(); //ポートから来た値を保存
    println(val);
    val = map(val, 0, 255, 10.0, 126.0); //座標からノートナンバーへ
  }
  
  // 目的地へのイージング
  float targetVal = val;
  easeVal += (targetVal - easeVal) * easing;
  
  osc.freq(midiToFreq(easeVal)); //ポートから来た値をMidiから周波数に変換して音階を決める
  
  noFill();
  stroke(255);
 
  fft.analyze(); //FFTの解析
  //周波数毎の分布を線で表現
  for(int i=0; i<bands; i++){
    line(i, height, i, height - fft.spectrum[i]*height*4); 
  }
}


// ノートナンバーから周波数に変換する関数
float midiToFreq(float note){
  float freqVal = (pow(2, ((note-69)/12.0)))*440;
  return freqVal;
}
