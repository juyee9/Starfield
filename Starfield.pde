Particle[] particle = new Particle[1000];
float speed;
void setup() {
size(800,800);
for (int i = 0; i < particle.length; i++){
  particle[i] = new Particle();
  particle[0] = new OddballParticle();
  }
}
void draw(){
  speed = map(mouseX, 0, width, 0, 20); 
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i <particle.length; i++){
    particle[i].move();
    particle[i].show();
  }  
}
class Particle{
  float x;
  float y;
  float z;
  Particle(){
    x = random(-width, width);
    y = random(-height,height);
    z = random(width);
  } 
  void move() {
    z = z - speed;
    if(z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height,height);
    }
}
  void show() { 
  fill(255);
  noStroke();
  float speedX = map(x / z, 0, 1, 0, width);
  float speedY = map(y / z, 0, 1, 0, width);
  
  float size = map(z, 0, width, 16, 0);
  ellipse(speedX, speedY, size, size);  }
}
class OddballParticle //inherits from Particle
{
  OddballParticle() {
  x = 400;
  y = 400;
  }
  void draw() {
  x = y + Math.random()*1-0.5;
  x = y + Math.random()*1-0.5;
  
  void show() {
  fill(0,255,0);
  noStroke();
  rect(400,400,40,20);
  }
}
