class Brick{

    float Bwidth = 100;
    float Bheight = 15;
    RVector corner;

  Brick(float x, float y){
    
   corner = new RVector(x,y);
  
  
  }

  void create(){
    rect(corner.x,corner.y,Bwidth,Bheight);  
  }



}