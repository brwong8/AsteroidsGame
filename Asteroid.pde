class Asteroid extends Floater{
  private double rotSpeed;
 public Asteroid(){
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 11;
    yCorners[0] = -7;
    xCorners[1] = 5;
    yCorners[1] = -9;
    xCorners[2] = -13;
    yCorners[2] = -4;
    xCorners[3] = -15;
    yCorners[3] = 9;
    xCorners[4] = -9;
    yCorners[4] = 10;
    xCorners[5] = -5;
    yCorners[5] = 15;
    xCorners[6] = 8;
    yCorners[6] = 11;
    xCorners[7] = 11;
    yCorners[7] = 6;
    myColor = color(179, 215, 232);
    myPointDirection = 0;
    myCenterX = (Math.random()*500);
    myCenterY = (Math.random() * 500);
    myXspeed = (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    rotSpeed = (Math.random()*3) * Math.PI;
    
  }
  public void move(){
   turn(rotSpeed);
    super.move();
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public void setX(double x){myCenterX = x;}
  public void setY(double y){myCenterY = y;} 
}
