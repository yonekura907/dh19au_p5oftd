import processing.serial.*;

Serial port; //Arduinoとシリアル通信する変数
float value = 0; // Arduinoからくる値を保存する変数
float easing = 0.05; // イージング
float easeValue = 0; // valueをイージングで滑らかにした値


int NUM = 255; // 円の個数
// 座標の配列
float[] posX = new float[NUM];
float[] posY = new float[NUM];
// スピードの配列
float[] speedX = new float[NUM];
float[] speedY = new float[NUM];
// 色の配列
color[] col = new color[NUM];
// 直径の配列
float[] diameter = new float[NUM];


void setup() {
    size(500, 500);
    
    // 自分のポート番号がSerial.list()配列の何番目かを調べる
    //println(Serial.list());
    
    // Serial.list()[]の配列に自分のポート番目をいれる 
    String arduinoPort = Serial.list()[5];
    
    // 変数portにarduinoからの通信を繋ぐ　
    port = new Serial(this, arduinoPort, 9600);
    
    
    // 配列の初期値
    for(int i=0; i<NUM; i++){
        posX[i] = random(8,width);
        posY[i] = random(8,height);
        speedX[i] = random(-4,4);
        speedY[i] = random(-4,4);
        col[i] = color(random(255),random(255),random(255),192);
        diameter[i] = random(8,40);
    }
}


void draw() {
    background(0);
    
    // もしArduinoから値が届いていたら
    if (port.available() > 0) {
       // ポートの値をvalに保存
       value = (int)port.read();
       println(value);
    }
    // 目的地へのイージング
    //float targetValue = value;
    //easeValue += (targetValue - easeValue) * easing;

    for(int i=0; i<value; i++){
        noStroke();
        fill(col[i]);
        ellipse(posX[i], posY[i], diameter[i], diameter[i]);
        
        // XY座標の移動
        posX[i] = posX[i] + speedX[i];
        posY[i] = posY[i] + speedY[i];

     // 跳ね返り
        if(posX[i] < 0 || posX[i] > width){
            speedX[i] = speedX[i] * -1;
        }
        if(posY[i] < 0 || posY[i] > height){
            speedY[i] = speedY[i]* -1;
        }
    }
}
