class MyHelper{
  int xText = 420;
  int yText = 500;
  

  
  MyHelper(){
  }
 
  
  void display(){
    stroke(250,100,0);
    line(width/2, 0, width/2, height);  // Hilfslinie vertikal
    line(0, height/2, width, height/2); // Hilfslinie horizontal
    
    fill(250,100,0);
    textFont(arial, 16);
    text("x: " +mouseX, xText, yText);
    text("y: " +mouseY, xText, yText+ zeile);

    
  }
}
