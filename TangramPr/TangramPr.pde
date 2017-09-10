int Figura;
int px[];
int py[];
float r[];
color c[];
int i;
//void dibujaTriangualosG(int x,int y,float r);
void setup(){
  size(1200,700);
  px = new int[50];
  px[0] =270;
  px[1] =270;
  px[2] =330;
  px[3] =210;
  px[4] =270;
  px[5] =150;
  px[6] =150;
  
  py = new int[50];
  py[0] =350;
  py[1] =350;
  py[2] =410;
  py[3] =410;
  py[4] =350;
  py[5] =230;
  py[6] =470;
  r = new float[7];
   for(i=0;i<7;i++){
    r[i]=0;
   }
  c = new color[7];
  c[0] =color(8,255,34);
  c[1] =color(255,8,37);
  c[2] =color(84,157,33);
  c[3] =color(252,122,0);
  c[4] =color(254,255,5);
  c[5] =color(19,13,250);
  c[6] =color(216,16,9);
  Figura = 50;
}
void draw(){
  loadPixels();
  background(25);
  pushStyle();
      fill(255);
      rect(145,225,250,250);
  popStyle();
  pushStyle();
      fill(190);
      rect(540,100,560,500);
  popStyle();
  dibujaTriangualosG(830,470,36);
    for(i=0;i<7;i++){
    pushMatrix();
    translate(px[i],py[i]);
    rotate(r[i]*radians(5));
    fill(c[i]);
    scale(2.0);
   
    switch(i){
    case 0:
    beginShape(TRIANGLES);
      vertex(0,0);
      vertex(-60,-60);
      vertex(60,-60);
      endShape();
      break;
    case 1:
      beginShape(TRIANGLES);
      vertex(0,0);
      vertex(60,-60);
      vertex(60,60);
      endShape();
      break;
    case 2:
      beginShape(TRIANGLES);
      vertex(0,0);
      vertex(-30,30);
      vertex(30,30);
      endShape();
      break;
    case 3: 
      beginShape(QUADS);
      vertex(0,0);
      vertex(30,-30);
      vertex(60,0);
      vertex(30,30);      
      endShape();
      break;
    case 4: 
      beginShape(TRIANGLES);
      vertex(0,0);
      vertex(-30,-30);
      vertex(-30,30);
      endShape();
      break;
    case 5:
      beginShape(QUADS);
      vertex(0,0);
      vertex(30,30);
      vertex(30,90);
      vertex(0,60);      
      endShape();
      break;
    case 6: 
      beginShape(TRIANGLES);
      vertex(0,0);
      vertex(0,-60);
      vertex(60,0);
      endShape();
      break;
    }    
   popMatrix();
   println("x:");
   println(mouseX);
   println("y:");
   println(mouseY);
    }
   if( mousePressed && (Figura != 50) ){
    px[Figura] += mouseX-pmouseX;
    py[Figura] += mouseY-pmouseY;
    
  }
}
void mousePressed(){
  if( mouseButton == LEFT ){
    color mouseC = get(mouseX,mouseY);
    for(int j=0;j<7;j++){
      if( c[j] == mouseC ){
        Figura = j;
      }
    }   
  } 
}
void mouseClicked(){
  if( mouseButton == RIGHT ){
    color mouseC = get(mouseX,mouseY);
    for(int j=0;j<7;j++){
      if( c[j] == mouseC ){
        r[j]=(r[j]+1)%72;
      }
    }   
  }  
}
void mouseReleased(){
 Figura = 50;
  for(i=0;i<7;i++){
    if( px[i] < 0 || px[i] > width || py[i] < 0 || py[i] > height ){
      px[i]=int(random(150,390));
      py[i]=int(random(230,470));
    }
  }
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
   color mouseC = get(mouseX,mouseY);
    for(int j=0;j<7;j++){
      if( c[j] == mouseC ){
        r[j]=(r[j]+e)%72;
      }
 // println(e);
}
}
void dibujaTriangualosG(int x,int y,float r)
{
    pushMatrix();
    translate(x,y);
    rotate(r*radians(5));
    fill(255);
    scale(2.0);
  beginShape(TRIANGLES);
      vertex(0,0);
      vertex(-60,-60);
      vertex(60,-60);
      endShape();
     popMatrix();
}