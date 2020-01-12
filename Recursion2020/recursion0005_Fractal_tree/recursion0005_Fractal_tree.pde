float theta =PI/4;
//float len = 150;
float shorten = 20;
color myGreen =color (10, 200,0);

void setup(){
  size(640,360);

}



void draw(){
  background(0);
  //Trunk
  translate(width/2, height);
  stroke(myGreen);
  //line (0,0,0, -150);
  branch(-150);

}

void branch(float len){
  stroke(myGreen);
  line (0,0,0, -len);
  translate(width/2, -len);
  
  len*=0.66;
  if(len>6){
    pushMatrix();
      rotate(theta);
      branch(len);
      popMatrix();
      
      pushMatrix();
      rotate(-theta);
      branch(len);
      popMatrix();
   
    }

}