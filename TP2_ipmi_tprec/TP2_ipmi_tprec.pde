PImage imagen0, imagen1, imagen2;
PFont fuente;

int pantalla = 0;
int tiempoCambio;
int duracionPantalla = 6000;

float textoX = 0;
float textoY = 0;
float velocidadX = 0;
float velocidadY = 0;

float textoTamaño = 24;

void setup() {
  size(640, 480);

  imagen0 = loadImage("fnaf3badending.jpg"); // cabezas animatronicos
  imagen1 = loadImage("personajes.jpg"); // personajes fnaf 1
  imagen2 = loadImage("goldenfreddy.jpg"); // golden freddy

  imagen0.resize(640, 480);
  imagen1.resize(640, 480);
  imagen2.resize(640, 480);

  fuente = createFont("Arial", 24);
  textFont(fuente);
  textAlign(CENTER, CENTER);
  fill(255);

  tiempoCambio = millis();

  textoX = 0;
  textoY = height/2;
  velocidadX = 1.5;
  velocidadY = 0;
}

void draw() {
  background(0);

  // PANTALLA 1
  if (pantalla == 0) {
    image(imagen0, 0, 0); // cabezas animatronicos
    textSize(textoTamaño);
    text("Five Nights at Freddy's\nun juego de terror único de una pizzería \nsiendo el guardia de seguridad...", textoX, textoY);
    textoX += velocidadX;
    if (textoX > width) {
      textoX = 0;
    }
  }

  // PANTALLA 2
  else if (pantalla == 1) {
    image(imagen1, 0, 0); // personajes fnaf 1
    textSize(textoTamaño);
    text("Durante la noche \ntenés que vigilar cámaras de seguridad \npara evitar que los animatrónicos te encuentren...", textoX, textoY);
    textoY += velocidadY;
    if (textoY > height) {
      textoY = 0;
    }
  }

  // PANTALLA 3
  else if (pantalla == 2) {
    image(imagen2, 0, 0);  // golden freddy
    textSize(textoTamaño);
    text("No todos los animatrónicos se anuncian... \nalgunos solo aparecen", textoX, textoY);
    textoX += velocidadX;
    textoY += velocidadY;
    if (textoX > width || textoY > height) {
      textoX = 0;
      textoY = 0;
    }
  }

  // CAMBIO DE PANTALLA AUTOMÁTICO
  if (millis() - tiempoCambio > duracionPantalla) {
    pantalla++;
    tiempoCambio = millis();

    if (pantalla == 1) {
      textoX = width/2;
      textoY = 0;
      velocidadX = 0;
      velocidadY = 1.2;
    } else if (pantalla == 2) {
      textoX = 0;
      textoY = 0;
      velocidadX = 1.0;
      velocidadY = 0.75;
    }
  }

  // FINAL
  if (pantalla >= 3) {
    background(0);
    fill(255);
    textSize(30);
    text("ESTÁS ACA POR TU CUENTA...\n¿SEGURO DE QUE QUERÉS ESTO?", width/2, height/2 - 60);

    rectMode(CENTER);
    fill(100);
    rect(width/2, height/2, 200, 50);

    fill(255);
    textSize(22);
    text("REINICIAR", width/2, height/2 + 5);
  }
}

void mousePressed() {
  if (pantalla >= 3) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
        mouseY > height/2 - 25 && mouseY < height/2 + 25) {
      pantalla = 0;
      tiempoCambio = millis();

      textoX = 0;
      textoY = height/2;
      velocidadX = 1.5;
      velocidadY = 0;
    }
  }
}
