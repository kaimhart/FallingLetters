class Letter {
  float x;
  float y;
  float yspeed;
  char letter;
  float angle;
  
  Letter(char k) {
    this.letter = k;
    x = random(0, width);
    y = 0;
    yspeed = 1;
    angle = random(0, TWO_PI);
    
  }
  
  void show() {
    boolean isBottom = (y > height - 40);
    pushMatrix();
    translate(x, y);
    rotate(angle);
    text(letter, 0, 0);
    popMatrix();
    if (!isBottom) {
      angle += 0.1;
      y += yspeed;
    }
  }
}