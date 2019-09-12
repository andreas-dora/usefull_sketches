PFont arial;
int offset = 5;
int zeile = 22;

color default_c = color(160);
color hi_lite = color(230);
color special_c = color(250, 130, 0);

color anka = color(255, 200, 0);
color gegenka = color(0, 150, 255);
color hypo = color(0, 255, 100);

float ankathete;
float gegenkathete;
float hypotenuse;
float sinusAlpha;
float tangensAlpha;
float alphaR;
float alphaD;

void setup(){
  size(640,360);
  arial = createFont("Arial", 16);
}

void draw(){
  background(0);
  
  
  stroke(default_c);
  noFill();
  ellipse(width/2, height/2, 250, 250);
  // ----------- HYPOTENUSE ------------
  stroke(hypo);
  line(width/2, height/2, mouseX, mouseY);
  
  // ----------- GEGENKATHETE ----------- 
  stroke(anka);
  line(width/2, height/2, mouseX, height/2);
  
  // ----------- ANKATHETE ----------- 
  stroke(gegenka);
  line(mouseX, mouseY, mouseX, height/2);
  
  hypotenuse = dist(width/2, height/2, mouseX, mouseY);
  ankathete = dist(width/2, height/2, mouseX, height/2);
  gegenkathete = dist(mouseX, mouseY, mouseX, height/2);
  sinusAlpha = gegenkathete / hypotenuse;
  tangensAlpha = gegenkathete / ankathete;
  alphaR = gegenkathete / ankathete;
  alphaD = degrees(alphaR);
  
  textFont(arial, 16);
  textAlign(LEFT, TOP);
  fill(anka);
  text("Ankathete: " + ankathete, 10, 10);
  fill(gegenka);
  text("Gegenkathete: " + gegenkathete, 10, 10+ zeile);
  fill(hypo);
  text("Hypotenuse: " + hypotenuse, 10, 10+ 2*zeile);
  fill(hi_lite);
  text("Sinus Alpha: " + sinusAlpha, 10, 10+ 3*zeile);
  text("Tangens Alpha: " + tangensAlpha, 10, 10+ 4*zeile);
  text("Radians Alpha :" + alphaR, 10, 10+ 5*zeile);
  text("Alpha: "+ alphaD, 10, 10+ 6*zeile);
  hilfsmittel(); //---------------------- Hilfsmittel auskommentieren
  
}
  
