ArrayList<KochLine> lines;

void setup(){
  size(640,640);
  lines = new ArrayList<KochLine>();
  PVector start = new PVector(0, height-50);
  PVector end = new PVector(width, height-50);
  lines.add(new KochLine(start, end));
}

void keyPressed(){
  if(key == ' '){
    generate();
  }
}

void draw(){
  background(0);
  for(KochLine l : lines){
    l.display();
  }

}

void generate(){
 ArrayList next = new ArrayList<KochLine>();
 for(KochLine l : lines){
   // Calculate 5 VEctors
   PVector a = l.kochA();
   PVector b = l.kochB();   
   PVector c = l.kochC();
   PVector d = l.kochD();
   PVector e = l.kochE();
   // Make line segments between all Vectos and add them
   next.add(new KochLine(a, b));
   next.add(new KochLine(b, c));
   next.add(new KochLine(c, d));
   next.add(new KochLine(d, e));
 }
 lines = next;

}