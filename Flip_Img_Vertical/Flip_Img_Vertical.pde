PImage foto;

void setup (){
size(326,408);
foto = loadImage("Fabio.jpg");
}

void draw (){
image(foto, 0, 0, foto.width/2, foto.height/2);
int [][] mat= new int [foto.height][foto.width/2];

int a=0;

for (int i = 0; i < foto.height; i++) {
  for(int j=0; j< foto.width/2; j++){
       mat[i][j] = a;
       a++;
  }   
}

a=0;
loadPixels();
for (int i=0; i<foto.height; i++){
  for(int j=0; j<foto.width/2; j++){
    pixels[mat[foto.height-i-1][j]] = pixels[mat[i][j]];
    a++;
   }
}   
  updatePixels();
}
