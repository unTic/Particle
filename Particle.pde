Particule p; 

void setup(){
  size(500,500);
  p = new Particule();
}

void draw(){
  background(200);
  p.move();
  p.show();
}

class Particule{
  float x,y;
  float r;
  float vx, vy;
  
  Particule(){
     this.x = width/2;
     this.y = height/2;
     this.r = 3;
     this.vx = 1;
     this.vy = 1;
  }
  
  void show(){
     stroke(0);
     strokeWeight(this.r);
     point(this.x, this.y); 
  }
  
  void move(){
     this.x += this.vx;
     this.y += this.vy;
  }
  
}