
void setup(){
  size(500,500);
  background(255);
  //配列
  //int[] numberShelf = new int[5];
  ////データの保存
  //numberShelf[0] = 10;
  //numberShelf[1] = 20;
  //numberShelf[2] = 30;
  //numberShelf[3] = 40;
  //numberShelf[4] = 50;
  int[] numberShelf = {50,100,150,200,250};
  
  //0から5未満をループ処理
  for(int i=0; i<5; i+=1){
    println(i);
    colorMode(HSB,360,100,100);
    
    fill(numberShelf[i],100,100);
    noStroke();
    ellipse(numberShelf[i],250,20,20);
  }
  
  
  //println(numberShelf[3]);
}
