Star[] star = new Star[600];
PFont arial;
float speed = 1;
void setup(){
  size(840,560);
  arial = createFont("Arial", 16);
  for(int i = 0; i< star.length; i++){
    star[i] = new Star();
  }
}

void draw(){
  background(0,10,40);
  // TestDisplay
    fill(255);
text("Speed: " + speed, 20, 20);

  translate(width/2, height/2);
  for(int i = 0; i< star.length; i++){
    star[i].update();
    star[i].display();
  }
  if(speed  >1){
    speed -=0.01;
  }
}

void keyPressed(){
  if(key == 49 ){
    speed +=4;
  }
}