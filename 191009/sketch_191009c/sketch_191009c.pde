void setup() {
    size(500,500);
    background(255);
}

void draw() {
    noStroke();
    fill(random(0,255),random(0,255),random(0,255),100); // 塗りがランダム
    ellipse(random(0,500),random(0,500),100,100); // 円の座標をランダムにして描く
}