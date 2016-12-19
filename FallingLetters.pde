ArrayList<Letter> letters;

void setup() {
  size(1280, 720);
  textSize(40);
  letters = new ArrayList<Letter>();
}

void draw() {
  background(50);
  for (Letter l : letters) {
    l.show();
  }
  
}

void keyTyped() {
  letters.add(new Letter(key));
}