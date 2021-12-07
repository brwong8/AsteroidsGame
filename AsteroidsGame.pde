star[] stars;
Spaceship bob;
int numOfShips = 9;
Spaceship[] fleet;
public void setup(){
  fleet = new Spaceship[numOfShips];
  for(int i = 0; i < fleet.length;i++){
    fleet[i] = new Spaceship();
    
  }
  size(400,400);
  
  stars = new star[250];
  for(int i = 0; i < stars.length;i++){
    stars[i] = new star();

  }
  bob = new Spaceship();

}
public void draw() {
  background(0);
  for(int i = 0; i < stars.length;i++){
  stars[i].show();
  }
  for(int i = 0; i < fleet.length;i++){
    fleet[i].move();
    fleet[i].show();
   
  
  }
  if ( keyPressed){
    if(key == ' ' ){
      for(int i = 0; i < fleet.length; i++){
        fleet[i].turn(-10);
      }
      bob.turn(-10);
    }
    if(key == 'w' || key == 'W'){
      for(int i = 0; i < fleet.length; i++){
        fleet[i].accelerate(0.5);
      }
      bob.accelerate(0.5);
    }
    if(key == 'h' || key == 'H'){
      for(int i = 0; i < fleet.length; i++){
        fleet[i].setXspeed(0);
        fleet[i].setYspeed(0);
      }
      bob.setXspeed(0);
      bob.setYspeed(0);
    }
    if(key == 'r' || key == 'R'){
      for(int i = 0; i < fleet.length; i++){
        fleet[i].myCenterX = (Math.random()*400);
        fleet[i].myCenterY = (Math.random()*400);
      }
      bob.myCenterX = (Math.random()*400);
      bob.myCenterY = (Math.random()*400);
    }
  }
 bob.move();
  bob.show();


 
 
}

