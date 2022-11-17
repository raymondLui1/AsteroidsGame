class Star //note that this class does NOT extend Floater
{
  //your code here
  private int starX, starY, starColor, starSize;
  public Star()
  {
    starX = (int)(Math.random()*1001);
    starY = (int)(Math.random()*1001);
    starColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    starSize = (int)(Math.random()*3)+1;
  }
  public void show()
  {
    fill(starColor);
    ellipse(starX, starY, starSize, starSize);
    fill(0);
  }
  
}
