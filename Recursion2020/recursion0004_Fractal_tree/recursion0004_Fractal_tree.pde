
void setup(){
  size(640,360);

}

void draw(){
  background(0);
  translate(width/2, height);
  stroke(0,230,20);
  line(0,0,0, -150);
  translate(0,-150);
  pushMatrix();
  rotate(PI/4);
    line(0,0,0, -100);

  popMatrix();
  rotate(-PI/4);
  line(0,0,0, -100);

}