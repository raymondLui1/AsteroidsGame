  Spaceship flyd = new Spaceship(); 
  ArrayList <Asteroid> giga = new ArrayList <Asteroid>();
  Star [] backStars; 
  ArrayList <Bullet> poppy = new ArrayList <Bullet>();
  boolean keyIs5 = false;
  boolean keyIs4 = false;
  boolean keyIs6 = false;
  boolean keyIs0 = false;
  boolean keyIs9 = false;
  int secondsPast = 0;
public void setup() 
{
  size(1000, 1000);
  backStars = new Star[1000];
  for(int i = 0; i < backStars.length; i++)
    backStars[i] = new Star();
  for(int i = 0; i < 20; i++)
    giga.add(new Asteroid());
}
public void draw() 
{
  background(0);
  stroke(0);
  for(int i = 0; i < backStars.length; i++)
    backStars[i].show();
  if(flyd.getMyHitPoints() != 0) {
    fill(255);
    textSize(20);
    text("Health is " + flyd.getMyHitPoints(), 870, 20);
    text("Time: " + secondsPast/60, 870, 40);
    for(int i = 0; i < giga.size(); i++){
      giga.get(i).show();
      giga.get(i).move();
      float collRange = dist((float)flyd.getMyCenterX(), (float)flyd.getMyCenterY(), (float)giga.get(i).getMyCenterX(), (float)giga.get(i).getMyCenterY()); 
      if(collRange < 20){
        flyd.loseHitPoints();
        giga.remove(i);
      }
    }
    for(int i = 0; i < poppy.size(); i++){
      poppy.get(i).show();
      poppy.get(i).move();
      poppy.get(i).timerUp();
      if(poppy.get(i).getMyTimer() == 600)
      {
        poppy.remove(i);
        break;
      }
      for(int j = 0; j < giga.size(); j++)
        {
          float desRange = dist((float)poppy.get(i).getMyCenterX(), (float)poppy.get(i).getMyCenterY(), (float)giga.get(j).getMyCenterX(), (float)giga.get(j).getMyCenterY());
          if(desRange < 10)
          {
            giga.remove(j);
            poppy.remove(i);
            break;
          }
        }
      }  
    flyd.show();
    if(keyIs5 == true)
    {
      flyd.accelerate(0.1);
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
    if(keyIs9 == true)
      poppy.add(new Bullet(flyd));    
    if(giga.size() < 1){
      for(int i = 0; i < 20; i++){
        giga.add(new Asteroid());
      }
    }
  }
  if(flyd.getMyHitPoints() == 0)
  {
    fill(255,0,0);
    textAlign(CENTER);
    textSize(100);
    text("GAME OVER", 500, 500);
  }
  secondsPast++;
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
  if(key == '9')
    keyIs9 = true;
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
  if(key == '9')
    keyIs9 = false;
}
