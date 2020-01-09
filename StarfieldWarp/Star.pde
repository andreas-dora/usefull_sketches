class Star{
  float x;
  float y;
  float z;
  float pz;
  Star(){
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }
  void update(){
    z -=speed;
    if(z <1){
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  void display(){
    fill(255);
    noStroke();
  
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, width);
    float r = map(z,0 ,width, 19, 0);
    ellipse(sx,sy,r,r);
    
   // drawing a line from the previous position to the new
    //float px = map(x/pz, 0, 1, 0, width); // Die alte position
    //float py = map(y/pz, 0, 1, 0, width);
    //stroke(255);
    //line(px,py,sx,sy);
  }

}