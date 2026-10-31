
Particle[] listofthings = new Particle[100];
void setup()
{
  background(200,200,200);
  fill(100,100,100);
  ellipse(200,200,150,150);
  delay(1000);
  size(400,400);
  for (int x = 0; x<60; x++){
    listofthings[x] = new Particle();
  }
  for (int i = 60; i<100; i++){
    listofthings[i] = new OddballParticle();
  }

}
void draw()
{
  
  
  background(50,50,50);
  for (int x = 0; x<100; x++){
    listofthings[x].show();
    listofthings[x].move();

  }
}
class Particle
{
  double myX,myY,speed,angle;
  color color1;
  Particle(){
    myX = 200;
    myY = 200;
    speed = Math.random()*15;
    angle = Math.random()*2*Math.PI;
  }
  void show(){
    noStroke();
    color1= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    fill(color1);
    ellipse((float)myX,(float)myY,(int)(Math.random()*50),(int)(Math.random()*50));
  }
  void move(){
    myX+= Math.cos(angle)*speed;
    myY += Math.sin(angle)*speed;

  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    speed = Math.random()*30;
    color1= (int)(Math.random()*255);
  }
  void show(){
    fill(color1);
    ellipse((float)myX,(float)myY,5,5);
    
  }
}
