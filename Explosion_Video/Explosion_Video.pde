  

import processing.video.*;
Movie explosion;

void setup() {
  size(800, 600);
  explosion = new Movie(this, "SpongebobExplosion.mov");
  explosion.loop();
}

void draw() {
  tint(255, 20);
  image(explosion, 0, 0);
}

void movieEvent(Movie m) {
  m.read();
}
