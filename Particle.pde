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

/*****************************************************************

*****************************************************************/

class Particule{
  float x,y;
  float r;
  float vx, vy;

  float vxMin = 2;
  float vxMax = 4;
  float vyMin = 2;
  float vyMax = 4;
  
  Particule(){
     this.x = width/2;
     this.y = height/2;
     this.r = 10;
     this.vx = 5;
     this.vy = 2;
     
  }
  
  void show(){
     stroke(0);
     strokeWeight(this.r);
     point(this.x, this.y); 
  }
  
  void move(){
     if(this.x>width){
       float a = random(0,1);
       this.vx = map(a,0,1,-this.vxMin, -this.vxMax);
     } else if(this.x<0){
       float a = random(0,1);
       this.vx = map(a,0,1,this.vxMin, this.vxMax);
     } else if (this.y>height){
       float a = random(0,1);
       this.vy = map(a,0,1,-this.vyMin,-this.vyMax);
     } else if(this.y<0){
       float a = random(0,1);
       this.vy = map(a,0,1,this.vyMin, this.vyMax);
     }
     
     this.x += this.vx;
     this.y += this.vy;
  }
  
  void randomV(){
     this.vx = random(0, this.vxMax);
     this.vy = random(0, this.vyMax);
  }
  
}