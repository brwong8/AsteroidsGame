class star {
 private double x, y;
  private int myColor,mySize;
 public star(){
   x = (Math.random()*400);
   y = (Math.random()*400);
   mySize = 5;
   myColor = color((int)(Math.random()*255)+230,(int)(Math.random()*255)+230,(int)(Math.random()*255)+230);
 }

public void show(){
  noStroke();
   fill(myColor);
   ellipse((float)x,(float)y,mySize,mySize);
 }
}
