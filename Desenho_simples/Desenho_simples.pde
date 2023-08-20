/* AUTOR: WELLERSON PRENHOLATO DE JESUS
  CURSO: CIÊNCIA DA COMPUTAÇÃO
  DISCIPLINA: COMPUTAÇÃO GRÁFICA
  DATA: 27/03/2019
*/
    @Override
     public void settings (){ //INICIA JANELA
        size (1000,650);  
    }
     
    @Override
    public void setup (){
         
     }
     
    @Override
     public void draw(){
         fill(124,252,0);
         stroke(50,205,50);
         rect (0,620,1000,30); //Chão
         fill (139,69,19); //Cor tronco árvore
         stroke(139,69,19);
         rect(106, 500, 40, 120);
         fill(34,139,34); //Cor folhas árvore
         stroke(0,128,0);
         ellipse(128, 450, 200,120);
         
         fill(32,178,170); //Cor prédio
         stroke(70,130,180);
         rect (450, 50, 500,570);
         fill(255,90,0);
         stroke(255, 0,0);
         triangle(450, 50, 700, 5, 950, 50);
         int i, inc=0;
    //OK
         //Coluna 1 
         for (i=0; i<4; ++i){
             if (i % 2 == 1 ){
                fill(240,230,140);
                stroke(25,25,112);
                strokeWeight(3);
                rect(480, 80+inc, 100, 80);
                rect(580, 80+inc, 100, 80);
            }else{
                fill(0,0,0);
                stroke(25,25,112);
                strokeWeight(3);
                rect(480, 80+inc, 100, 80);
                rect(580, 80+inc, 100, 80);
             }
            
             inc+=100;
         }   
         //Coluna 2

         inc =0;
         for (i=0; i<4; ++i){
             fill(240,230,140);
             stroke(25,25,112);
             strokeWeight(3);
             rect(720, 80+inc, 100, 80);
             rect(820, 80+inc, 100, 80);
             inc+=100;
         }   
         
         
         rect(600, 490, 100, 130); //porta 1
         rect(700, 490, 100, 130); //porta 2
         
         fill(0,0,0);
         ellipse(680, 565, 10, 10);
         ellipse(720, 565, 10, 10);
         
         fill(255,255,0); //Sol
         stroke(255,215,0);
         ellipse(100, 100, 120, 120);
         
         //Nuvem 
         int n=0, m=0;
         for (i=0; i<10; ++i){
             fill(65,105,225);
             stroke(65,105,225);
             ellipse(100+n, 250, 120, 90);
             ellipse(240+n, 150, 120, 90);
             n=n+10;
         }
     }
