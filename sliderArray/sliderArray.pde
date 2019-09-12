PFont arial;
MyHelper myHelper;
color silver = #C0C0C0;
//color dark_silver = #969696;
int offset = 5;
int zeile = 20;

float yKorrektur;


Slider slider;

//String[] sl_name ={"r: ", "g: ", "b: "};
String sl_name ="red";
int sl_x = width/2;
int sl_y = 50;
int sl_w = 45;
int sl_l = 255;
int knob_size = 15;

void setup(){
  size(800,600);
  

  arial = createFont("Arial", 16);
  myHelper = new MyHelper();
  
  slider = new Slider(sl_name, sl_x, sl_y, sl_w, sl_l);
}

void draw(){
  background(40);
  myHelper.display();
 
  slider.display(mouseX, mouseY);
} 

void mousePressed(){

  if(slider.mouseOver(mouseX, mouseY)){
    slider.aktivate(true);
    yKorrektur = slider.start +slider.position - mouseY;
    println("mouseY: " + mouseY);
    println("Korrektur: " + yKorrektur);
    println("");
    
  }
}
void mouseDragged(){
  if(slider.isAktive){
    float newPos = constrain(mouseY +yKorrektur -slider.start, 0, slider.stop);
    slider.update(newPos);
  }
}
void mouseReleased(){
  slider.aktivate(false);
}
  
