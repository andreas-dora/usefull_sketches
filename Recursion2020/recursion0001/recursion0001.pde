

void setup(){
  size(640,360, P3D);
}


void draw(){
  background(20);
  drawCircle(width/2, height/2, 700);
}

void drawCircle(float x, float y, float d){
  stroke(250,100,50);
  noFill();
  ellipse(x, y, d, d);
  if(d > 10){
    x +=4;
    //y +=4;
    drawCircle(x,y,d/1.2);
  }
}