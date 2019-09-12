class Button{
  int x;
  int y;
  int w;
  int h;
  String name;
  color c;
  Button(String name_, int x_, int y_, int w_, int h_){
    name = name_;
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }

  boolean mouseOver(int mx, int my){
    if((mx > x) && (mx < x+w) && (my > y) &&(my < y+h)){

      return true;
    } else{
      return false;
    }
  }
        
  
  void display(int mx, int my){
    if(mouseOver(mx, my)){
      c = hi_lite;  
    } else {
      c = default_c;
    }

    
    stroke(c);
    noFill();
    rect(x,y,w,h);
    fill(c);
    textAlign(LEFT,TOP);
    text(name, x, y);
  }
}
    
  
