void hilfsmittel(){
  int textX = width - 20;
  int textY = 10;

  //stroke(special_c);
  //line(width/2, 0, width/2, height);
  //line(0, height/2, width, height/2);
  
  textFont(arial, 18);
  textAlign(RIGHT, TOP);
  fill(special_c);
  text("mouseX: " + mouseX, textX, textY);
  text("mouseY: " + mouseY, textX, textY + zeile);
  
  
  
  
}
