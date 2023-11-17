ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = particles.size()-1; i > 0; j--){
    particles.get(abs(j)).update();
    particles.get(abs(j)).display();
    if (particles.get(abs(j)).position.y >= 400){
      particles.remove((abs(j)));
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
