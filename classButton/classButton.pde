Button[] button = new Button[2];
int zahl = 200;
void setup(){
  size(640,360);
  textSize(24);
  button[0] = new Button("+",50,30,80,60);
  button[1] = new Button("-",50,140,80,60);
}

void draw(){
  background(25);
  fill(#15E56A);
  textSize(36);
  textAlign(CENTER);
  text(zahl,80,124); 
  
  for(int i = 0; i< button.length; i++){
    button[i].display(mouseX, mouseY);
  }
}

  void mousePressed(){
  if(button[0].mouseOver(mouseX, mouseY)){
    zahl+=1;
  }
    if(button[1].mouseOver(mouseX, mouseY)){
    zahl-=1;
  }
  
}
