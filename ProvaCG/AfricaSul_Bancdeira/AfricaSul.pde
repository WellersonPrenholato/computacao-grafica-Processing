void setup(){
  size(500, 350, P3D);
}

void draw(){
  noStroke();
  //fill(0);
  //rect(0,0, 500, 290);//Desenha o retangulo preto
  
  //fill(255,0,0);
  //rect(0,0, 500, (height/2)-60);  //Retangulo vermelho
  
  fill(255); 
  rect(0, (height/2)-80, 500, 200); //retangulo branco
  
  fill(255,0,0);
  rect(0,0, 500, (height/2)-60);  //Retangulo vermelho
  
  fill(0,0,255);
  rect(0, (height/2)+60, 500, height/2); //Ratangulo azul
  
  fill(46,139,87);
  rect(0, (height/2)-35, 500, 70); //Retangulo verde
      
  //triangle(x1, y1, x2, y2, x3, y3)
  fill(255);
  triangle((width/2),(height/2),80,0,80,height);
  rect(0,0, 80, height);
  
 fill(46,139,87);
 triangle((width/2)-14,height/2,30,0,30,height);
 rect(0,0,30, height);
 
 fill(255,215,0);
 triangle((width/2)-60,height/2,0,50,0,(height)-50);
 
 fill(0);
 triangle((width/2)-90,height/2,0, 70,0,height-70);
 
   fill(46,139,87);
  rect((width/2)-55, (height/2)-35, 55,70);
 
  
}
