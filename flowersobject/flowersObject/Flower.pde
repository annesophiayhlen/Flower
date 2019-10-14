class Flower{
int r;      
float ballX;   
float ballY;
float x;
float y;
float yDirc = -1; // y direction
float xDirc = -1; // x direction'
float speed;  

 Flower(int radius, float speed){
 this.speed = speed;
 r = radius;
 x = width/2;
 y = height/2;

}

void move(){  // function for moving the object
  x = x + (speed * xDirc);
  y = y + (speed * yDirc);
}

void bounce(){
  /*if(y - r  <= 0){    // orignal collision with wall
  yDirc = 1;
  }
  else if (y + r >= height){
  yDirc = -1;
  }
    if(x - r  <= 0){
  xDirc = 1;
  }
  else if (x + r >= width){
  xDirc = -1;
  }
  */
  if(y - r <= 0 || y + r >= height) yDirc = yDirc*-1; // now speed can be -
  if(x - r <= 0 || x + r >= width) xDirc = xDirc*-1;
  
}
void display(){
  fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/5) {
    ballX=r*cos(i);
    ballY=r*sin(i);
    ellipse(x+ballX,y+ballY,r,r); 
    }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  }
}
