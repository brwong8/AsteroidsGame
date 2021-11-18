star[] stars;
Spaceship bob;
public void setup(){
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
  if ( keyPressed){
    if(key == ' ' ){
      bob.turn(-10);
    }
    if(key == 'w' || key == 'W'){
      bob.accelerate(0.5);
    }
    if(key == 'h' || key == 'H'){
      bob.setXspeed(0);
      bob.setYspeed(0);
    }
  }
 bob.move();
  bob.show();
}
