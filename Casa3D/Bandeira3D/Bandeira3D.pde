/*
  AUTOR: WELLERSON PRENHOLATO DE JESUS
  DISCIPLINA: COMPUTAÇÃO E REPRESENTAÇÃO GRÁFICA
  2019/1
*/

void setup (){
size(600,600,P3D);
}

void draw(){
  lights();
  background(150,150,150);
  //pushMatrix();
  translate(width/2,height/2);
  rotateX(PI * ((float)600/width));
  rotateY(PI * ((float)300/(height/2))); 
  
      
      rotateY(PI * ((float)mouseX/(360)));
      //rotateX(PI * ((float)mouseY/(height)));
    

  print("X:", mouseX,"\nY:", mouseY);
  print("\n");

  //PRÉDIO - OK
  pushMatrix();
  fill(255);
  box(500, 350, 2);
  popMatrix();
  
  pushMatrix();
  fill(255,0,0);
  translate(0,150);
  box(500,150, 4);
  noFill();
  popMatrix();
  
  pushMatrix();
  fill(0,0, 255);
  translate(0,-150);
  box(500,150,4);
  noFill();
  popMatrix();
  
  pushMatrix();
  fill(46,139,87);
  translate(0,0);
  box(500,80,4);
  noFill();
  popMatrix();
  
  pushMatrix();
  beginShape();
vertex(0, 0, 0);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);
endShape();
  popMatrix();
}
