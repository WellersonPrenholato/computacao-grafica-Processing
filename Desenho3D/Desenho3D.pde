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
  fill(139,0,0);
  box(180, 250, 50);
  
  
  //JANELA *************
  fill(138,43,226);
  translate(-40,90);
  box(70,40,52);
  
  fill(138,43,226);
  translate(80,0);
  box(70,40,52);
  
  fill(148,0,211);
  translate(0,-50);
  box(70,40,52);
  
  fill(148,0,211);
  translate(-80,0);
  box(70,40,52);
  
  fill(138,43,226);
  translate(0,-50);
  box(70,40,52);
  
  translate(80,0);
  box(70,40,52);

  //******************
  
  //popMatrix();
  
  //PORTA ***************
  fill(165,42,42);  
  translate(-20,-85, 20);
  box(40,60,15);
  
  translate(-40,0, 0);
  box(40,60,15);
  
  noStroke();
  fill(65,105,225);
  translate(10,0,8);
  sphere(2);
  
  translate(20,0,0);
  sphere(2);
  //********************
  
  //BASE *******************
  noStroke();
  fill(0,100,0);
  translate(-10,-35, 30);
  box(250,10,250);
  stroke(1);
  //************************
  
  //SOL 
  noStroke();
  fill(255,215,0); //AMARELO
  translate(-150, 350);
  sphere(30);
  
  //Árvore **********************
    fill(50,205,50);//FOLHAS
    translate(78,-280,20);
    sphere(15);
    translate(20,0,0);
    sphere(15);
    translate(-10,20,0);
    sphere(15);
    
    translate(0,-50,0); //TRONCO
    fill(139,69,19);
    box(10, 80, 5);
    
    fill(50,205,50); //FOLHAS
    translate(120,50,0);
    sphere(15);
    translate(10,-20,0);
    sphere(15);
    translate(-20,0,0);
    sphere(15);
    
    translate(10,-30,0);//TRONCO
    fill(139,69,19);
    box(10, 80, 5);
    stroke(1);
   //*****************************************
   
   // BANCO ******************************
   //COSTA
   translate(-120,-10,30);
   box(50, 8, 3);
   translate(0,11,0);
   box(50, 8, 3);
   
   //BUNDA
   translate(0, -20, 2);
   box(50, 3, 8);
   translate(0, 0, 10);
   box(50, 3, 8);
   
   //PÉ
   translate(12,-10, -7);
   box(5, 20, 12);
   
   translate(-24,0, 0);
   box(5, 20, 12);
   //**********************************
   
   // BANCO 2 ******************************
   //COSTA
   translate(130,20,-5);
   box(50, 8, 3);
   translate(0,11,0);
   box(50, 8, 3);
   
   //BUNDA
   translate(0, -20, 2);
   box(50, 3, 8);
   translate(0, 0, 10);
   box(50, 3, 8);
   
   //PÉ
   translate(12,-10, -7);
   box(5, 20, 12);
   
   translate(-24,0, 0);
   box(5, 20, 12);
   //**********************************
   
   //NUVEM **************************
   noStroke();
   translate(-100,320, -30);
   fill(100,149,237);
   sphere(20);
   
   translate(20,0, 0);
   sphere(20);
   
   translate(20,0, 0);
   sphere(20);
   
   translate(-80,-50, 0);
   sphere(20);
   
   translate(-20,0, 0);
   sphere(20);
   
   translate(-20,0, 0);
   sphere(20);
   
   //********************************
   stroke(1);
}
