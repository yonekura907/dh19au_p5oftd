void setup(){
  size(500,500);
  background(255);
  noFill();
  stroke(0);
  for(int i=0; i<200; i++){
    line(random(0,width),random(0,height),random(0,width),random(0,height));
  }
}
