NormalParticle [] stars;
void setup()
{
	size(600,600);
  stars = new NormalParticle[500];
  for (int i = 0; i<stars.length; i++)
  {
    stars[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i<stars.length; i++)
  {
	  stars[i].show();
  }
}
class NormalParticle
{
	double myX, myY, speed, dir;
  NormalParticle()
  {
    speed = (Math.random()*7);
    myX = 300;
    myY = 300;
    dir = Math.PI;
  }
  void show()
  {
    ellipse((float)myX,(float)myY,10,10);
    rotate((float)dir);
    myX = myX + 1;
  }
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}