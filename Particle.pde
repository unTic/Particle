int nMax = 10;
Particule p[] = new Particule[nMax]; 

void setup(){
  size(500,500);
  for(int i=0; i<p.length; i++){
    p[i] = new Particule();
  }
}

void draw(){
  background(200);
  for(int i=0; i<p.length; i++){
    p[i].move();
    p[i].show();
  }
}

/*****************************************************************
*******************  -  P A R T I C U L E  -  *******************
*****************************************************************/

class Particule{
  float x,y;
  float r;
  float vx, vy;

  float vxMin = 2;
  float vxMax = 4;
  float vyMin = 1;
  float vyMax = 5;
  
  Particule(){
     this.randomPos();
     this.r = 10;
     this.randomV();
     
  }
  
  void show(){
     stroke(0);
     strokeWeight(this.r);
     point(this.x, this.y); 
  }
  
  void move(){
     this.bouncing();
     this.x += this.vx;
     this.y -= this.vy;
  }
  
  void bouncing(){
    if(this.x>width){
       float a = random(0,1);
       this.vx = map(a,0,1,-this.vxMin, -this.vxMax);
     } else if(this.x<0){
       float a = random(0,1);
       this.vx = map(a,0,1,this.vxMin, this.vxMax);
     } else if (this.y>height){
       float a = random(0,1);
       this.vy = map(a,0,1,this.vyMin,this.vyMax);
     } else if(this.y<0){
       float a = random(0,1);
       this.vy = map(a,0,1,-this.vyMin, -this.vyMax);
     }
  }
  
  void randomV(){
     float a = random(0,1);
     this.vx = map(a,0,1,this.vxMin, this.vxMax);
     this.vy = map(a,0,1,this.vyMin, this.vyMax);
  }
  
  void randomPos(){
     this.x = random(0,width);
     this.y = random(0,height);
  }
  
  
}