String n1 = "House ov thee Automator";
String n2 ="";
Button[] button = new Button[2];
String[] buttonName = {"Copy", "Paste"};
PFont arial;
int zeile = 22;
int w = 45;
color default_c = color (160);
color hi_lite = color (230);
// Copy to clipboard
//GClip.copy(n1);
// Get clipboard contents into another string
//n2 = GClip.paste();
// Display new string
//println(n2);


void setup(){
  size(600, 400);
  arial = createFont("Arial", 16);
  for(int i = 0; i < button.length; i++){
    button[i] = new Button(buttonName[i], width/2, height/2 + i *zeile, w, zeile);
  }
}

void draw(){
  background(80);
  fill(hi_lite);
  textFont(arial, 16);
  text("Start: " +n1, 50, 50);
  text("Ziel: " +n2, 50, 300);
  
  for(int i = 0; i < button.length; i++){
    button[i].display(mouseX, mouseY);
  }
}

void mousePressed(){
  if(button[0].mouseOver(mouseX, mouseY)){
    GClip.copy(n1);
  }
  if(button[1].mouseOver(mouseX, mouseY)){
    n2 = GClip.paste();
  }
}
