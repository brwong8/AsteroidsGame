star[] stars;
Spaceship bob;
//ArrayList <Asteroid> hi;
public void setup(){
  size(400,400);
  //hi = new ArrayList <Asteroid>();
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
    if(key == 'r' || key == 'R'){
      bob.myCenterX = (Math.random()*400);
      bob.myCenterY = (Math.random()*400);
      bob.myPointDirection = Math.random()*360;
    }
  }
 bob.move();
  bob.show();
  
 
 
}

 
 
}
