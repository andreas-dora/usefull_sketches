class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float r;
  float g;
  float rad;
  float w;
  float greenMinus;

  Particle(PVector l) {
    acceleration = new PVector(0,0);
    velocity = new PVector(random(-3,3),random(-3,3));
    position = l.copy();
    lifespan = 255.0;
    r = 255.0;
    g = 200.0;
    rad = random(6,24);
    w = random(6,24);
    greenMinus = random(1.5, 3.0);

  }

  void run() {
    update();
    display();
  }

  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1;
   // r -=0.5;
    g -=greenMinus;   
  }

  void display() {
    fill(r,g,0,lifespan);
    ellipse(position.x,position.y,rad,rad);
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
