
//線の最大数
int num = 100;
float[] posX = new float[num]; //X座標
float[] posY = new float[num]; //y座標
float[] posZ = new float[num]; //z座標

void setup(){
  size(500,500,P3D);
  //初期座標
  for(int i=0; i<num; i+=1){
    posX[i] = random(width);
    posY[i] = random(height);
    posZ[i] = i * -10;
  }
}

void draw(){
  background(0);
  stroke(255);
  
  for(int i=0; i<num; i+=1){
    //Zの長さで線を描く
    line(posX[i],posY[i],posZ[i],posX[i],posY[i],posZ[i]-40);
    
    //アニメーション
    posZ[i] = posZ[i] + 20;
    
    //Z座標が0以上になったらランダムに再配置する
    if(posZ[i] > 0){
      posX[i] = random(width);
      posY[i] = random(height);
      posZ[i] = -1000;
    }
  }
}
