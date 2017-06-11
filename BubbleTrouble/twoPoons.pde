class twoPoons extends Powerup{
    Harpoon poony;
    
    twoPoons(Harpoon needstobewatched){
      isVisible = false;
      x = 500;
      y = 550; 
      poony = needstobewatched;
    }
    
   
    void show(){
      isVisible = true;
      image(loadImage("fork.png"), x, y);
    }
    
    boolean onFloor(){
      return y >= 650;
    }
    
    void powerUP(){
      print(poony.dos);
      poony.dos = true;
      isVisible = false;
      delay(2000);
      poony.dos = false;
    }
    
    String toString(){
      return "I make you invincible";
    }
}