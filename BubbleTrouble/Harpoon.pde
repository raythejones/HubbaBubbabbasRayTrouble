class Harpoon{
  int harposition;
  boolean isShooting, canShoot = true;
  int startY = 700, len = 0;
  float accel = .02, takeaway = 4;

  Harpoon(int PosValue){
    harposition = PosValue;
  }

  void setX(int xVal){
    harposition = xVal;
  }

  void shoot(){  
    if(startY > 0){ 
      canShoot = false;
      stroke(191);
      line(harposition,650,harposition,startY);
      startY -= takeaway;
      len += takeaway;
      takeaway += accel;
    }
    else {
     canShoot = true; 
     startY = 650;
     isShooting = false;
     len = 0;
    }
   }
  
  void reset(){
    canShoot = true; 
    startY = 700;
    isShooting = false;
    len = 0;
  }
  
  void settw(int toset){
    takeaway = toset;
  };
  
  PVector endPoint(){
    return new PVector(harposition, startY);
  }


  boolean setMove(int k, boolean b) {
    if(k == 32){
      return isShooting = b;
    }
    else{
      return b;
    }
 }
 
}
        