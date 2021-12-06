class Spaceship extends Floater  
{   
   Spaceship(){
corners = 11;
xCorners = new int[corners];
yCorners = new int[corners];
xCorners[0] = 12;
yCorners[0] = 0;
xCorners[1] = 9;
yCorners[1] = -1;
xCorners[2] = 1;
yCorners[2] = -4;
xCorners[3] = -4;
yCorners[3] = -11;
xCorners[4] = -7;
yCorners[4] = -8;
xCorners[5] = -6;
yCorners[5] = -5;
xCorners[6] = -6;
yCorners[6] = 5;
xCorners[7] = -7;
yCorners[7] = 8;
xCorners[8] = -4;
yCorners[8] = 11;
xCorners[9] = 1;
yCorners[9] = 4;
xCorners[10] = 9;
yCorners[10] = 1;
myColor = color(247, 153, 255);
myCenterX = (Math.random()*400);
myCenterY = (Math.random()*400);
myPointDirection = 0;
   }
   public void setXspeed(double x){
     myXspeed = x;
   }
   public void setYspeed(double y){
     myYspeed = y;
   }
public double getXcenter(){return myCenterX;}
public double getYcenter(){return myCenterY;}

public void setXcenter(double x){
  myCenterX = x;
}
public void setYcenter(double y){
  myCenterY = y;
}


} 
