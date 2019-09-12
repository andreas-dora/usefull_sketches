PFont arial;
float a;
float deg;
color hi_lite = #C0C0C0;
color default_c = #969696;
color backC = color(40);
color backHi = color(70);

int offset = 5;
int zeile = 22;

void setup(){
  arial = createFont("Arial", 20);  
  size(640,360);
}
void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  a = atan2(mouseY-height/2, mouseX-width/2);
  deg = degrees(a);
  rotate(a);
  stroke(default_c);
  noFill();
  rectMode(CENTER);
  rect(0, 0, 100, 10);
  popMatrix();
  textFont(arial, 20);
  fill(default_c);
  text("Radians: " + a, 10, 25);
  text("Degrees: " + deg, 10, 50);

}
