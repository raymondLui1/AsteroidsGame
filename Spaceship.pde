class Spaceship extends Floater  
{   
    //your code here
    public Spaceship()
    {
      corners = 20;  //the number of corners, a triangular floater has 3  
      xCorners = new int[]{0, -10, -16, -16, -10, -10, -16, -16, -10, -10, -16, -16, -10, 0, 16, 12, 14, 14, 12, 16};
      yCorners = new int[]{8, 10, 10, 6, 6, 2, 2, -2, -2, -6, -6, -10, -10, -8, -5, -3, -1, 1, 3, 5};
      myColor = color(255);   
      myCenterX = 500.0;
      myCenterY = 500.0; //holds center coordinates   
      myXspeed = 0;
      myYspeed = 0; //holds the speed of travel in the x and y directions   
      myPointDirection = 0; //holds current direction the ship is pointing in degrees  
    } 
    
    public void setMyCenterX(double dNum)
    {
      myCenterX = dNum;
    }
    
    public void setMyCenterY(double dNum)
    {
      myCenterY = dNum;
    }
    
    public void setMyXSpeed(double dNum)
    {
      myXspeed = dNum;
    }
    
    public void setMyYSpeed(double dNum)
    {
      myYspeed = dNum;
    }
    
    public void setMyPointDirection(double dNum)
    {
      myPointDirection = dNum;
    }
    
    public double getMyCenterX()
    {
      return myCenterX;
    }
    
    public double getMyCenterY()
    {
      return myCenterY;
    }
    
    public double getMyXSpeed()
    {
      return myXspeed;
    }
    
    public double getMyYSpeed()
    {
      return myYspeed;
    }
    
    public double getMyPointDirection()
    {
      return myPointDirection;
    }
}
