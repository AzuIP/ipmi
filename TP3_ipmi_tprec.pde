PImage referencia;

color colorBlanco = color(255);
color colorBlancoOriginal;

float rotacion = 0;
float rotacionOriginal = 0; 

void setup() {  //  Configuración inicial (se ejecuta UNA vez)
  size(800, 400);
  referencia = loadImage("F_24.png");
  referencia.resize(400, 400);

  colorBlanco = color(255);
  colorBlancoOriginal = colorBlanco;
  rotacionOriginal = rotacion;
}


void draw() {   // Se ejecuta 60 veces por seg (loop infinito)
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
  for (int i = 25; i < 380; i += 190) {   // i: 25, 215 (2 columnas)
    for (int y = 25; y < 380; y += 190) {   // y: 25, 215 (2 filas)
      rect(i, y, 165, 165);   // 4 cuadrados blancos de 165×165
    }
  }

  // Cuadrados negros (ROTABLES)
  for (int i = 50; i < 380; i += 190) {   // i: 50, 240
    for (int y = 50; y < 380; y += 190) {   // y: 50, 240
      dibujarCuadrado(i + 57.5, y + 57.5, 115, color(0), rotacion);   // Llama a función para dibujar 4 cuadrados negros rotables
    }
  }

  // Cuadrados blancos (ROTABLE)
  for (int i = 75; i < 380; i += 190) {    // i: 75, 265
    for (int y = 75; y < 380; y += 190) {    // y: 75, 265
      dibujarCuadrado(i + 32.5, y + 32.5, 65, colorBlanco, rotacion);  // 4 cuadrados blancos chicos rotables
    }
  }



  // CUADRADOS DEL CENTRO CON ROTACIÓN
  float centroX = 205;
  float centroY = 205;

  // Tamaños fijos: (exactamente como tenia antes)
  float tamanoGrande = 200;
  float tamanoMedio1 = 155;
  float tamanoMedio2 = 115;
  float tamanoChico = calcularTamano(tamanoMedio2);   // Tamaño calculado: calcularTamano(115) = 115 * 0.6087 = 70

  // Arrays con datos organizados
  float[] tamanos = {tamanoGrande, tamanoMedio1, tamanoMedio2, tamanoChico, tamanoChico/2};
  color[] colores = {color(0), colorBlanco, color(0), colorBlanco, color(0)};

  // Llama a función que dibuja los 5 cuadrados concéntricos
  dibujarCuadradosConcentricos(centroX, centroY, tamanos, colores, rotacion);

  popMatrix();   // Restaura coordenadas
}



// FUNCION SIN RETORNO
void dibujarCuadrado(float x, float y, float tamano, color colorRelleno, float angulo) {
  pushMatrix();
  translate(x, y);
  rotate(radians(angulo));   // Rota todo según el ángulo
  fill(colorRelleno);   // Establece el color de relleno
  rect(-tamano/2, -tamano/2, tamano, tamano);   // Dibuja el cuadrado centrado
  popMatrix();

  // ¿Por qué -tamano/2?: pq el origen queda en el medio, entonces arranco desde la mitad para atras y el cuadrado queda bien centrado
}

void dibujarCuadradosConcentricos(float x, float y, float[] tamanos, color[] colores, float angulo) {
  pushMatrix();
  translate(x, y);
  rotate(radians(angulo));
  for (int i = 0; i < tamanos.length; i++) {    // Usar .length permite que el bucle se ajuste automáticamente si el array cambia de tamaño. Es más eficiente y evita errores si se agregan o quitan elementos.
    fill(colores[i]);   // Aplica el color correspondiente
    rect(-tamanos[i]/2, -tamanos[i]/2, tamanos[i], tamanos[i]);
  }
  popMatrix();   // Restaura coordenadas
}




// FUNCION CON RETORNO
float calcularTamano(float base) {
  return base * 0.6087;   //  Es el factor matemático para que 115 * 0.6087 = 70, manteniendo la proporción exacta de tu diseño original
}



// Teclas:
// "C" para cambiar de color
// "A" / "D" para rotar 5 grados
// "R" reinicia las variables desde el principio

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
  if (key == 'r' || key == 'R') {
    reiniciarVariables();
  }
}

// REINICIAR VARIBALES
void reiniciarVariables() {
  colorBlanco = colorBlancoOriginal;
  rotacion = rotacionOriginal;
}
