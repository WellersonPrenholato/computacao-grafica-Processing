PImage img; // define um objeto PImage chamado imagem 
PImage imgAux; // define um objeto PImage chamado imagem auxiliar

void setup() { 
  img = loadImage("rosa.jpg"); // carrega uma imagem
  imgAux = img; // carrega a imagem auxiliar
  surface.setSize(img.width * 2, img.height); // defini o tamanho da tela
}

void draw() {
  background(255);
  image(img, 0, 0);
  image(imgAux, img.width, 0);
  textSize(40);
  text("PRESSIONE 1", (img.width/2)+100, 30);
  fill(25,25,112);
}

void keyPressed() {

  img.loadPixels();
  imgAux.loadPixels();
  PImage foto = createImage(img.width, img.height, RGB);
  foto.loadPixels();

  if (key == '1') {
    int origem = img.width * img.height;
    // multiplicar a largura pela altura para encontrar o último pixel
    int destino = 0;   
    for (int temp = origem-1; temp>=0; temp--) {
    // origem -1 pq começamos contar do 0
      float r = red(img.pixels[temp]);
      float g = green(img.pixels[temp]);
      float b = blue (img.pixels[temp]);
       float soma = r*0.3+ g*0.59+ b*0.11;
       //float soma = (r + g + b) / 3; 
      img.pixels[temp]= color(soma);
      foto.pixels[destino] = img.pixels[temp];
      destino++;
    }
  }
  imgAux = foto;
  imgAux.updatePixels();
}
