Flower f;

void setup() {
  size(600,400);
  f = new Flower(25,4);

}

void draw(){
   background(#43AF76);
  // framRate(5);
  f.bounce();
  f.move();
  f.display();
}
