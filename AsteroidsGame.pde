star[] stars;
Spaceship bob;
ArrayList <Asteroid> hi
 = new ArrayList <Asteroid>();

public void setup(){
  size(500,500);
  for(int i = 0; i < 20; i++){
  hi.add(new Asteroid());

  }

  stars = new star[250];
  for(int i = 0; i < stars.length;i++){
    stars[i] = new star();

  }
  bob = new Spaceship();

public void draw() {
  background(0);
   
  for(int i = 0; i < stars.length;i++){
  stars[i].show();
  }
  for(int i = 0; i < hi.size();i++){
  
   hi.get(i).show();
   hi.get(i).move();
   float d = dist((float)bob.getX(),(float)bob.getY(),(float)hi.get(i).getX(),(float)hi.get(i).getY());
   if (d < 10){
    hi.remove(i);
   }
   
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
      bob.myCenterX = (Math.random()*500);
      bob.myCenterY = (Math.random()*500);
       bob.setXspeed(0);
      bob.setYspeed(0);
      bob.myPointDirection = (Math.random()*360);
    }
  }
  
 bob.move();
  bob.show();


 
 
}
