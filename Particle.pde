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
  float vxMin = -2;
  float vxMax = 2;
  float vyMin = -2;
  float vyMax = 2;
  
  Particule(){
     this.x = width/2;
     this.y = height/2;
     this.r = 10;
     this.vx = 0;
     this.vy = 5;
  }
  
  void show(){
     stroke(0);
     strokeWeight(this.r);
     point(this.x, this.y); 
  }
  
  void move(){
     //vertical boundary
     if( (this.x>width)||(this.x<0) ){
       this.randomV();
     } // horizontal boundary
     else if(( (this.y>height)||(this.y<0) )){ 
       this.randomV();
     }
     this.x += this.vx;
     this.y -= this.vy;
  }
  
  void randomV(){
     this.vx = random(this.vxMin, this.vxMax);
     this.vy = random(this.vyMin, this.vyMax);
  }
  
}