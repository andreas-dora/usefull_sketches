class Button{
  int x;
  int y;
  int w;
  int h;
  color c;


  String label;
  
  Button(String label_, int x_, int y_, int w_, int h_){
    label = label_;
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
    if((mx > x) && (mx < x+w) && (my > y) &&(my < y+h)){
       fill (#05F03D);
    } 
      else { 
      fill (#97EDBA);
    }
 //   fill(c);
    rect(x,y,w,h);
    fill(0);
    textSize(46);
    textAlign(CENTER);
    text(label,x,y,w,h);
  }
}
