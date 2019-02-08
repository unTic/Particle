Particule p; 

void setup(){
  size(500,500);
  p = new Particule();
}

void draw(){
  background(200);
  p.show();
}

class Particule{
  float x,y;
  float r;
  
  Particule(){
     this.x = width/2;
     this.y = height/2;
     this.r = 3;
  }
  
  void show(){
     stroke(0);
     strokeWeight(this.r);
     point(this.x, this.y); 
  }
  
}