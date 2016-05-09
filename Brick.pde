class Brick{

    float Bwidth = 60;
    float Bheight = 25;
    RVector corner;

  Brick(float x, float y){
    
   corner = new RVector(x,y);
  
  
  }

  void create(){
    rect(corner.x,corner.y,Bwidth,Bheight);  
  }



}