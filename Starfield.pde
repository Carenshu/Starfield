//your code here
Particle [] particle;
void setup()
{
        //your code here
        size(512, 512);
        
        particle= new Particle[100];
        for (int i =0; i< particle.length; i++)
        {
                particle[i]= new NormalParticle();
        }
        particle[0]= new Oddball();
        particle[1]= new JumboParticle();
        
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
class NormalParticle implements Particle
{
        //your code here
        double x,y,speed,angle;

        int colour;
        

        NormalParticle()
        {
        //colour=(int)((Math.random()*255));
        //println("colour: "+colour);
        x=256;
        y=256;
        angle=(Math.random()*(2*Math.PI));
       
        }
       public void move()
        {

        speed= (double)((Math.random()*100)-50);
                x=(Math.cos(angle)*speed)+x;
                y=(Math.sin(angle)*speed)+y;

        }
        public void show ()
        {
                colour=(int)((Math.random()*255));
                fill((int)((Math.random()*255)),(int)((Math.random()*255)),(int)((Math.random()*255)));
                
                ellipse((float)x, (float)y, 5, 5);
        }
}
interface Particle
{
        //your code here
        public void show();
        public void move(); 

}
class Oddball implements Particle //uses an interface
{
        //your code here
        
        double x,y,speed,angle;
        
        Oddball()
        {
        	x=256;
       		y=256;
        	angle=(Math.random()*(2*Math.PI));
        }
        
        public void move ()
        {
            speed= (double)((Math.random()*100)-50);
                x=(Math.cos(angle)*speed)+x;
                y=(Math.sin(angle)*speed)+y;

            }
        public void show ()
        {
            fill(255,0,0);
            noStroke();
          rect((float)x, (float)y, 10, 10);
            }
}
class JumboParticle extends NormalParticle //uses inheritance
{
        //your code here
        double x,y,speed;
    
        JumboParticle()
        {
        	x=256;
       		y=256;
        }
         public void move ()
        {
            speed= (double)((Math.random()*100)-50);
                x=(Math.cos(angle)*speed)+x;
                y=(Math.sin(angle)*speed)+y;

            }
     
        public void show ()
        {
            fill(0,0,255);
            noStroke();
          ellipse((float)x, (float)y,25, 25);
            }
        
}



