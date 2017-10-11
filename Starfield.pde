Particle [] stars;
void setup()
{
	size(600,600);
  stars = new Particle[500]; //Particle is the interface
  for (int i = 0; i<stars.length; i++)
  {
    stars[i] = new NormalParticle();
  }
  stars[0] = new JumboParticle();
  stars[1] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i<stars.length; i++)
  {
	  stars[i].show();
    stars[i].move();
  }
}
class NormalParticle implements Particle
{
	double myX, myY, speed, dir;
  double myColor;
  NormalParticle()
  {
    speed = (Math.random()*6+1);
    myX = mouseX;
    myY = mouseY;
    dir = Math.random()*2*Math.PI;
    myColor = Math.random()*255;
  }
  public void show()
  {
    noStroke();
    fill(255,(float)myColor,255);
    ellipse((float)myX,(float)myY,10,10);
  }
  public void move()
  {
    myX = myX + speed*Math.cos(dir);
    myY = myY + speed*Math.sin(dir);
  }
}
interface Particle
{
	public void show();
  public void move();

}
class JumboParticle extends NormalParticle//uses an interface
{
  public void show()
  {
    noStroke();
    fill(255,(float)myColor,255);
    ellipse((float)myX,(float)myY,50,50);
  }
}
class OddballParticle implements Particle //uses inheritance, extends from normal class,                                //change the part that needs to be diff
{
	//your code here
  double myX, myY;
  double myColor;
  OddballParticle()
  {
    myX = mouseX;
    myY = mouseY;
    myColor = Math.random()*255;
  }
  public void show()
  {
    noStroke();
    fill((float)myColor,255,255);
    //ellipse((float)myX,(float)myY,30,50);
    triangle((int)myX,(int)myY,(int)myX+20,(int)myY,(int)myX+10,(int)myY-20);
  }
  public void move()
  {
    
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
}

void mouseClicked()
{
  for (int i = 0; i<stars.length; i++)
  {
    stars[i] = new NormalParticle();
  }
  stars[0] = new JumboParticle();
  stars[1] = new OddballParticle();
}
