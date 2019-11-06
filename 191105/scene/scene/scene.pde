import processing.sound.*;

// 音データ
SoundFile sd1,sd2,sd3;

// シーンを切り替える
int scene;

// 座標
float x;
float y;

// 三角形の半径
int radius;
// 三角形の角度
int theta;

// 色相
int hue;

void setup( ) {
    size(600,600);
    background(230);
    
    // 最初のシーン
    scene = 0;
    
    // 音データを読み込み
    sd1 = new SoundFile(this, "clay.mp3");
    sd2 = new SoundFile(this, "pinwheel.mp3");
    sd3 = new SoundFile(this, "prism-2.mp3");
}


void draw( ) {
    background(230);
    noStroke();
    colorMode(HSB,360,100,100);
    
    if(scene == 1){
        // シーン1だったら       
        fill(hue,100,100);
        x = x + 20;
        ellipse(x,height/2,400,400);
    } else if(scene == 2){
        // シーン2だったら
        fill(hue,100,100);
        y = y + 20;
        rect(0,y,width,height);
    } else if(scene == 3) {
        // シーン3だったら
        noFill();
        strokeWeight(40);
        stroke(hue,100,100);
        //pushMatrix(); // 無くても良い
        translate(width/2,height/2);
        rotate(radians(theta));
        triangle(radius*cos(radians(30)),radius*sin(radians(30)),radius*cos(radians(150)),radius*sin(radians(150)),radius*cos(radians(270)),radius*sin(radians(270)));
        //popMatrix(); // 無くても良い
        theta = theta + 1;
        radius = radius + 20;
    }
}



void keyPressed(){
    hue = (int)random(360);
    if(key == 'a'){
    // aを押したら      
      scene = 1; // シーンを1に変更
      x = -100;
      sd1.play(); // 再生    
    } else if(key == 's'){
    // sを押したら
      scene = 2; // シーンを2に変更
      y = -100;
      sd2.play(); // 再生
    } else if(key == 'd'){
    // dを押したら
      scene = 3; // シーンを3に変更
      y = height + radius;
      theta = 0;
      radius = 0;
      sd3.play(); // 再生
    }
}
