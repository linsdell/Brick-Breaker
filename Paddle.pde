class Paddle{

  RVector move = new RVector(3,0);
  RVector location;
  RVector blank = new RVector(0,0);
  
  int ret;
  
  Paddle(){
    
    location = new RVector(200,50);
    
  }
  
  void track(){
  keyPressed();
  if(ret == 1){
    location.sub(move);
  }
  if(ret == 2){
    location.add(move);
  }
  if(ret==0){
    location.add(blank);
  }
  rect(location.x,height - 50,150,20);
  
  
  }


void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ret = 1;
    } else if (keyCode == RIGHT) {
      ret = 2;
    } 
  } else {
    ret = 0;
  }
}













}