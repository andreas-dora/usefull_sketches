class Btn{
  float x;
  float y;
  float w;
  float h;
  color c;


  String label;
  
  Btn(String label_, float x_, float y_, float w_, float h_){
    label = label_;
    x =  x_;
    y = y_;
    w = w_;
    h = h_;    
  }
  
  boolean mouseOver(int mx, int my){
    if(mx > (menuX+x) && (mx < menuX+x+w) && (my > y) &&(my < y+h)){
      return true;
    } else{
      return false;
    }
  }
  
  void display(int mx, int my){
    if((mx >menuX+ x) && (mx <menuX+ x+w) && (my > y) &&(my < y+h)){
      fill (#47B498,99);
    } else { 
      fill (#47B498,80);
    }
    rect(menuX +x,y,w,h);
    fill(#000000);
    textSize(20);
    textAlign(CENTER);
    text(label,menuX +x,y,w,h);
  }
}
