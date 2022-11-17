  //your variable declarations here
  Spaceship flyd = new Spaceship(); 
  Star [] backStars; 
  boolean keyIs5 = false;
  boolean keyIs4 = false;
  boolean keyIs6 = false;
  boolean keyIs0 = false;
public void setup() 
{
  size(1000, 1000);
  backStars = new Star[1000];
  for(int i = 0; i < backStars.length; i++)
    backStars[i] = new Star();
  //your code here
}
public void draw() 
{
  background(0);
  stroke(0);
  for(int i = 0; i < backStars.length; i++)
    backStars[i].show();
  flyd.show();
  if(keyIs5 == true)
  {
    flyd.accelerate(0.5);
  }
  if(keyIs6 == true)
    flyd.turn(5);
  if(keyIs4 == true)
    flyd.turn(-5);
  if(keyIs0 == true)
  {
    flyd.setMyCenterX((Math.random()*1001));
    flyd.setMyCenterY((Math.random()*1001));
    flyd.setMyXSpeed(0);
    flyd.setMyYSpeed(0);
    flyd.setMyPointDirection((Math.random()*361));
    keyIs0 = false;
  }
  flyd.move();
  //your code here
}

public void keyPressed()
{ 
  if(key == '5')
    keyIs5 = true;
  if(key == '4')
    keyIs4 = true;
  if(key == '6')
    keyIs6 = true;  
  if(key == '0')
    keyIs0 = true;  
}

public void keyReleased()
{
  if(key == '5')
    keyIs5 = false;
  if(key == '4')
    keyIs4 = false;
  if(key == '6')
    keyIs6 = false;  
  if(key == '0')
    keyIs0 = false;  
}
