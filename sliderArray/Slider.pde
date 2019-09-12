class Slider{
  float box_x;
  float box_y;
  float start;// slider y
  float box_w;
  float x; // slider x
  float box_h;
  float w;
  float stop;    // h
  float r;
  String name;
  float name_y;
  int value;
  float position = 200;
  color c;
  color default_c = #969696;
  color hi_lite = color(255);
  boolean isAktive = false;
  
  Slider(String name_, float x_, float y_, float box_w_, float slider_l){
    name = name_;
    box_x = x_;
    box_y = y_;
    box_w = box_w_;
    x = box_x + box_w/2;
    start = y_ + offset + knob_size;
    box_h = (3*offset) + (2*knob_size )+ slider_l + 2*zeile;
    name_y = box_y + (3*offset) + (2*knob_size )+ slider_l + zeile;
    w = offset;
    stop = slider_l;
    r = knob_size;
    println(box_h);
  }
  boolean mouseOver(float mx, float my){
    float d = dist(x,start+position, mx, my);
    if(d < r){
      return true;
    } else {
      return false;
    }
  }
  
  void aktivate(boolean akt_){
    isAktive = akt_;
  }
  
  void update(float val_p){
    position = val_p;
  }
  
  
  void display(float mx, float my){
    if(mouseOver(mx,my)){
      c = silver;
    } else if (isAktive){
      c = color(silver);
    } else {
      c = default_c;
    }
    stroke(default_c);
    fill(50);
    rect(box_x, box_y, box_w, box_h);
    value = round(map(position, 0, 255, 255, 0));
    stroke(default_c);
    fill(0);
    rect(x-2, start, 4, stop);
 //   line(x -offset, start + position, x+offset, start + position);
    fill(c);
    stroke(c);
    ellipse(x, start+ position, 2*r,2*r); 
   // noFill();
    fill(0);
    stroke(default_c);
    rect(x-r, start+stop+r + offset, 30, 20);
    fill(default_c);
    textAlign(CENTER, TOP);
    text(value,x, start+stop+r + offset);
    text(name, x, name_y);
  }
}
    
    
