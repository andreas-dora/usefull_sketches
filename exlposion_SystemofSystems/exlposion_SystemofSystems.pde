import java.util.Iterator;
ArrayList<ParticleSystem> systems;
PFont arial;
String myText ="Please press the Mousebutton";
color orange = color(255, 100, 50);

void setup(){
  size(640,360);
  systems = new ArrayList<ParticleSystem>();
  arial = createFont("Arial", 24);
  myText = myText.toUpperCase();
}

void draw() {
  background(0);
  Iterator<ParticleSystem> it = systems.iterator();
  while (it.hasNext()) {
    ParticleSystem ps = it.next();
    ps.run();
    ps.addParticle(); 
    if(ps.isDone()){
      it.remove();
    }    
  }
  textFont(arial);
  fill(orange);
  textAlign(CENTER, BOTTOM);
  text(myText,width/2,height-10);
}

void mousePressed() {
  systems.add(new ParticleSystem(new PVector(mouseX,mouseY)));
}
