class Asteroid extends Floater
{
  private double rotSpeed;
  
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{10 + (int)(Math.random()*9)-4, 10 + (int)(Math.random()*9)-4, 0 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4, 0 + (int)(Math.random()*9)-4, 10 + (int)(Math.random()*9)-4};
    yCorners = new int[]{0 + (int)(Math.random()*9)-4, 10 + (int)(Math.random()*9)-4, 10 + (int)(Math.random()*9)-4, 10 + (int)(Math.random()*9)-4, 0 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4, -1*10 + (int)(Math.random()*9)-4};
    myColor = color(#FF2C2C);   
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000; //holds center coordinates   
    myXspeed = Math.random()*6-3;
    myYspeed = Math.random()*6-3; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    rotSpeed = Math.random()*20-10;  
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getMyCenterX(){
    return myCenterX;
  }
  
  public double getMyCenterY(){
    return myCenterY;
  }
}
