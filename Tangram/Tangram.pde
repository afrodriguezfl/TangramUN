int Figura;
int px[];
int py[];
int r[];
color c[];
int i;

void setup(){
  size(800,800);
  px = new int[7];
  px[0]=0;
  px[1]=0;
  px[2]=0;
  px[3]=0;
  px[4]=0;
  px[5]=0;
  px[6]=0;
  py = new int[7];
  px[0]=0;
  px[1]=0;
  px[2]=0;
  px[3]=0;
  px[4]=0;
  px[5]=0;
  px[6]=0;
  r = new int[7];
  for(i=0;i<7;i++){
    r[i]=0;
  }
  c = new color[7];
  c[0] =color(8,255,34);
  c[1] =color(255,8,37);
  c[2] =color(84,157,33);
  c[3] =color(252,122,0);
  c[4] =color(8,255,96);
  c[5] =color(19,13,250);
  c[6] =color(216,16,9);
  Figura = 50;
}
void draw(){
 loadPixels();
  background(0);
  for(i=0;i<7;i++){
    pushMatrix();
    translate(px[i],py[i]);
  //  rotate(r[i]*radians(45));
    fill(c[i]);
    scale(2.0);
    switch(i){
    case 0:
    beginShape(TRIANGLES);
      vertex(100,100);
      vertex(220,100);
      vertex(160,160);
      endShape();
      break;
    case 1:
      beginShape(TRIANGLES);
      vertex(160,160);
      vertex(220,100);
      vertex(220,220);
      endShape();
      break;
    case 2:
      beginShape(TRIANGLES);
      vertex(160,220);
      vertex(190,190);
      vertex(220,220);
      endShape();
      break;
    case 3: 
      beginShape(QUADS);
      vertex(130,190);
      vertex(160,160);
      vertex(190,190);
      vertex(160,220);      
      endShape();
      break;
    case 4: // Medium
      beginShape(TRIANGLES);
      vertex(130,130);
      vertex(160,160);
      vertex(130,190);
      endShape();
      break;
    case 5: // Square
      beginShape(QUADS);
      vertex(100,160);
      vertex(130,190);
      vertex(130,130);
      vertex(100,100);      
      endShape();
      break;
    case 6: // Diamond
      beginShape(TRIANGLES);
      vertex(100,220);
      vertex(160,220);
      vertex(100,160);
      endShape();
      break;
    }    
    popMatrix();
  }
   
}