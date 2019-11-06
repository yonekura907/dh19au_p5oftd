void setup() {
    size(500,500);
    noStroke();
    fill(0);
    
    //距離を測る
    // float x = dist(0,0,50,50);
    // println("x: "+x);
}

void draw() {
    background(255);

    for (int y = 0; y < width; y+=20) {
        for (int x = 0; x< height; x+=20) {
            //マウス座標とXY座標の距離を保存
            float mouseDistance = dist(x,y,mouseX,mouseY);
            ellipse(x, y, mouseDistance*0.1, mouseDistance*0.1);
        }
    }
}
