//your code here
NormalParticle [] particle;
void setup()
{
	//your code here
	size(512, 512);
	particle= new NormalParticle[50];
	for (int i =0; i< particle.length; i++)
	{
		particle[i]= new NormalParticle();
	}
	
}
void draw()
{
	//your code here
	background(0);
	for (int i =0; i< particle.length; i++)
	{
		particle[i].show();
		particle[i].move();
	}


}
class NormalParticle
{
	//your code here
	double x,y,speed,angle;

	int colour;
	
	NormalParticle()
	{
        colour=(int)(Math.random()*255);
	}
	void move()
	{
		x=(Math.cos(angle)*speed)+x;
		y=(Math.sin(angle)*speed)+y;
	}
	void show ()
	{
		fill(colour,colour,colour);
		
		ellipse((float)x, (float)y, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move(); 

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


