PImage referencia;

int cantidad = 5;
float tamañoBase = 40;
color colorFigura;
boolean mover = false;
color colorBlanco = color(255);

float rotacion = 0;

void setup() {
  size(800, 400);
  referencia = loadImage("F_24.png");
  referencia.resize(400, 400);
  colorFigura = color(0);
}

void draw() {
  background(255);

  // IMAGEN DE REFERENCIA
  image(referencia, 0, 0);

  // LÍNEA EN EL MEDIO PARA DIVIDIR
  stroke(255);
  strokeWeight(5);
  line(400, 0, 400, 400);

  // LADO DERECHO
  pushMatrix();
  translate(400, 0);

  // Fondo negro
  noStroke();
  fill(0);
  rect(0, 0, 400, 400);

  // Cuadrados grandes blancos de fondo (SIN ROTAR)
  fill(colorBlanco); 
  for (int i = 25; i < 380; i += 190) {
    for (int y = 25; y < 380; y += 190) {
      rect(i, y, 165, 165);
    }
  }

  // Cuadrados negros (ROTABLES)
  for (int i = 50; i < 380; i += 190) {
    for (int y = 50; y < 380; y += 190) {
      pushMatrix();
      translate(i + 57.5, y + 57.5); // centro del cuadrado 115
      rotate(radians(rotacion));
      fill(0);
      rect(-57.5, -57.5, 115, 115);
      popMatrix();
    }
  }

  // Cuadrados blancos (ROTABLE) 
  for (int i = 75; i < 380; i += 190) {
    for (int y = 75; y < 380; y += 190) {
      pushMatrix();
      translate(i + 32.5, y + 32.5); 
      rotate(radians(rotacion));
      fill(colorBlanco); 
      rect(-32.5, -32.5, 65, 65);
      popMatrix();
    }
  }

  // CUADRADOS DEL CENTRO CON ROTACIÓN
  float centroX = 205;
  float centroY = 205;

  float tamañoGrande = 200;
  float tamañoMedio1 = 155;
  float tamañoMedio2 = 115;
  float tamañoChico = 70;

  pushMatrix();
  translate(centroX, centroY);
  rotate(radians(rotacion));

  fill(0);
  rect(-tamañoGrande/2, -tamañoGrande/2, tamañoGrande, tamañoGrande);

  fill(colorBlanco);
  rect(-tamañoMedio1/2, -tamañoMedio1/2, tamañoMedio1, tamañoMedio1);

  fill(0);
  rect(-tamañoMedio2/2, -tamañoMedio2/2, tamañoMedio2, tamañoMedio2);

  fill(colorBlanco);
  rect(-tamañoChico/2, -tamañoChico/2, tamañoChico, tamañoChico);

  fill(0);
  rect(-tamañoChico/4, -tamañoChico/4, tamañoChico/2, tamañoChico/2);
  popMatrix();

  popMatrix();
}

// Teclas: "c" para cambiar de color
// "a" / "d" para rotar

void keyPressed() {
  if (key == 'c' || key == 'C') {
    colorBlanco = color(random(255), random(255), random(255));
  }
  if (key == 'a' || key == 'A') {
    rotacion -= 5;
  }
  if (key == 'd' || key == 'D') {
    rotacion += 5;
  }
}
