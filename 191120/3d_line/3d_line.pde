int NUM = 100;

float[] x = new float[NUM]; // X座標
float[] y = new float[NUM]; // Y座標
float[] z = new float[NUM]; // Z座標


void setup(){
    size(500,500,P3D);
    // 初期配置
    for(int i = 0; i < NUM; i++){
        x[i] = random(width); // X座標:画面の中央
        y[i] = random(height); // Y座標:画面の中央
        z[i] = i * -10;
     }
}

void draw(){
    background(0); //背景白
    stroke(255); // 罫線の色
    
    for(int i = 0; i < NUM; i++){
        // lineはｚ軸で長さを出す
        line(x[i], y[i], z[i], x[i], y[i], z[i]-40);
        
        // アニメーション　Z座標が20ずつ手前に移動
        z[i] = z[i] + 20;

        // Z座標が0以上になったらランダムで再配置する。
        if(z[i] > 0){
            x[i] = random(width);
            y[i] = random(height);
            z[i] = -1000;
        }
    }
}
