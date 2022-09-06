class Input{
  String name;
  int x;
  int y;
  int w;
  int h;
  String value;
  int max_val;
  int strSize;
  boolean isActive = false;
  String valueString;
  String vorne;
  String hinten = "";
  String cursorP ="|";
  color  c;
  color bc;
  color feldColor;  
  color textColor;
  
  Input(String val_,int x_, int y_, int w_, int h_){
  
 // Input(int val_, int x_, int y_, int w_, int h_, int strSize_){
    //name = name_;
   // value = val_;
     
   
    valueString = val_;
    vorne = val_;
    hinten = "";
    x = x_;
    y = y_;
    w = w_;
    h = h_;
 //   strSize = strSize_;


  }

   boolean mouseOver(int mx, int my){
    if((mx > menuX+x) && (mx < menuX+x+w) && (my > y) &&(my < y+h)){
      return true;
    } else{
      return false;
    }
  } 

  void activate(boolean act_){
   /*  if (act_ == false){
    valueString = value; //vorne + hinten;
    } else {
        hinten = "";
        if(int(valueString) >0){
          vorne = valueString;
        } else {
          vorne = "";
        }
    }*/
    isActive = act_;
  }
        /*
        if(int(valueString) >0){
          vorne = valueString;
        } else {
          vorne = "";
        }*/
    
  
  void update(String val_){
    valueString = val_;
    value = val_;
  }
  
  void display(int mx, int my){
    if((mouseOver(mx,my))||(isActive)){
       c = backC[5];
    } else {
      c = #47B498;
    }
    if(isActive){
      bc = 0;
    } else {
      bc = #2F0150;
    }
    //stroke(default_c);
    //noFill();
    //rect(x,y,w,h);
  noStroke();
    fill(bc);
//    rect(x + offset, y + 15, w - 2*offset, h - 20);
    rect(menuX+x , y , w, h);
    
 //   textFont(arial, 10);
    textAlign(LEFT, TOP);
 //   fill(default_c);
 //   text(name, x+ w/2, y);
    fill(c);
    textFont(courier, 20);
    
    
    if(isActive){
      text(vorne + cursorP + hinten,menuX+x+4, y+4,w,h );
    } else {
      text(valueString,menuX+x+4, y+4,w,h );
    }
    
  }
  
}
  
