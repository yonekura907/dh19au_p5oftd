void setup() {
    size(500,500); // ウインドウのサイズ
    background(255); // 背景
}

void draw() {
    noStroke(); // 線なし
    fill(0,255,255,100); // 塗り
    ellipse(mouseX,mouseY,100,100); // 円をマウス座標を中心に描く
}