
/*AUTOR: WELLERSON PRENHOLATO
  CURSO: CIÊNCIA DA COMPUTAÇÃO 
  2019/1 - COMPUTAÇÃO E REPRESENTAÇÃO GRÁFICA
*/
PImage img, imgRotacao, imgInterpolacao;
int x=0;
int y=0;

void setup(){
  size(530, 490);
  img = loadImage("lobo.jpg");
  image(img, 0,0);
  imgRotacao = createImage(258,195,RGB);
  imgInterpolacao = createImage(258,195,RGB);
  color cor; 
  float xr,yr;
  float subx=0, suby=0;
  //subx = i-(img.width/2);
  //suby = j-(img.height/2);
  for (int i=0; i<img.width; ++i){
    for (int j=0; j<img.height; ++j){
       cor = img.get(i,j); //Pega as cores da imagem original
       xr = i * cos(radians(17)) + j * sin(radians(17));
       yr = j * cos(radians(17)) - i * sin(radians(17));
       imgRotacao.set(int(xr), int(yr),cor);
    }
  }
  
  for (int i=0; i<img.width; ++i){
    for (int j=0; j<img.height; ++j){
       color p1, p2, p3, p4, ponto;
       float deltaColuna, deltaLinha;
       int x, y;
       
       xr = i * cos(radians(-17)) + j * sin(radians(-17));
       yr = j * cos(radians(-17)) - i * sin(radians(-17));
       
       x = (int)xr;
       y = (int)yr;
       
       deltaColuna = xr - x;
       deltaLinha = yr - y;
       
       p1 = get(x,y);
       p2 = get(x+1, y);
       p3 = get(x, y+1);
       p4 = get(x+1, y+1);
       
       ponto = interpolacao(p1,p2,p3,p4,deltaColuna,deltaLinha);
       imgInterpolacao.set(i,j,ponto);
    }
  }
}

void draw(){
  textSize(25);
  text("PRESSIONE 1", (img.width/2)+140, 30);
  text("- Rotação 17º", (img.width/2)+140, 60);
  fill(25,25,112);
  text("PRESSIONE 2", (img.width/2)+140, 100);
  text("- Interpolação", (img.width/2)+140, 130);
  fill(25,25,112);
}

void keyPressed(){

  if (key == '1'){
    image(imgRotacao, 0, 250);
  }else if (key == '2'){
    image(imgInterpolacao,260,250);
  }
}

float controle(float deltaCol, float ch1, float ch2){
  return deltaCol * (ch2 - ch1) + ch1;
}

color interpolacao(color A,color B, color C, color D, float deltaCol, float deltaLin){
  float controlAB,controlCD,r,g,b;
  controlAB = controle(deltaCol,red(A),red(B));
  controlCD = controle(deltaCol,red(C),red(D));
  
  r = deltaLin * (controlCD - controlAB) + controlAB;
  controlAB = controle(deltaCol,green(A),green(B));
  controlCD = controle(deltaCol,green(C),green(D));
  
  g = deltaLin * (controlCD - controlAB) + controlAB;
  controlAB = controle(deltaCol,blue(A),blue(B));
  controlCD = controle(deltaCol,blue(C),blue(D));
  
  b = deltaLin * (controlCD - controlAB) + controlAB;
  
  return color(r,g,b);
}
