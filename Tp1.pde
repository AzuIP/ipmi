PImage peluchegoldenfreddy;

void setup() {
  size(800, 400);
  peluchegoldenfreddy = loadImage("descarga (1).jpg"); // imagen del peluche
  imageMode(CORNER);
  noLoop(); // solo dibuja una vez
}

void draw() {
  background(255);

  // Imagen a la izquierda
  image(peluchegoldenfreddy, 0, 0, 400, 400);

  // Línea del medio
  stroke(0);
  strokeWeight(4);
  line(400, 0, 400, 400);
  
  // COLORES
  color dorado = color(240, 190, 40);
  color sombra = color(200, 140, 20);
  color luz = color(255, 220, 100);
  color negro = color(0);
  color b = color(255);
  
  
  // Cuerpito
fill(247, 198, 47); 
stroke(123, 99, 24); 
strokeWeight(2);
ellipse(600, 280, 180, 120); // cuerpo principal
 
 
 
  // Brazos
 
// Brazo izq
pushMatrix();
translate(510, 255);
rotate(radians(-10));
fill(247, 198, 47);
stroke(123, 99, 24);
strokeWeight(2);
ellipse(0, 0, 80, 40);

// Circulito claro en la punta izq
noStroke();
fill(255, 226, 133);
ellipse(-29, 0, 25, 30); 
popMatrix();


// Brazo der
pushMatrix();
translate(690, 255);
rotate(radians(10));
fill(247, 198, 47);
stroke(123, 99, 24);
strokeWeight(2);
ellipse(0, 0, 80, 40);

// Circulito claro en la punta der
noStroke();
fill(255, 226, 133);
ellipse(29, 0, 25, 30);
popMatrix();


// Zona clara de la panza
fill(255, 226, 133); // mismo color que cachetes y círculos claros
noStroke();
ellipse(600, 270, 90, 50);
ellipse(600, 280, 100, 50);
ellipse(600, 290, 110, 45);
ellipse(600, 300, 120, 40);



   // Piernitas

// Pierna izq
pushMatrix();
translate(530, 330); // más a la izquierda
rotate(radians(-5));
fill(247, 198, 47);
stroke(123, 99, 24);
strokeWeight(2);
ellipse(0, 0, 90, 70);
popMatrix();

// Pierna der
pushMatrix();
translate(670, 330); // más a la derecha
rotate(radians(5));
fill(247, 198, 47);
stroke(123, 99, 24);
strokeWeight(2);
ellipse(0, 0, 90, 70);
popMatrix();


fill(255, 226, 133); 
noStroke();

// Circulito claro en pierna izq
pushMatrix();
translate(530, 330); // misma posición que la pierna
rotate(radians(-5)); // misma rotación
ellipse(0, 0, 50, 50); // más grande y centrado
popMatrix();

// Circulito claro en pierna der
pushMatrix();
translate(670, 330); // misma posición que la pierna
rotate(radians(5)); // misma rotación
ellipse(0, 0, 50, 50); // más grande y centrado
popMatrix();






//sombrerito
stroke(60); // 
strokeWeight(2);
  fill(0);
ellipse(600, 68, 90, 50); // parte superior}
ellipse(600, 90, 120, 50);// parte de abajo



//orejitas
stroke(123, 99, 24); 
strokeWeight(2);
fill(247, 198, 47);

  //oreja izq
      ellipse(520, 117, 60, 50); 
      ellipse(529, 119, 90, 40);
      ellipse(529, 115, 94, 45);

  // oreja der
      ellipse(680, 117, 60, 50); 
      ellipse(671, 119, 90, 40);
      ellipse(671, 115, 94, 45);
  
// Sombritas internas de las orejas
fill(111, 65, 38); // marrón oscuro
noStroke();

   // sombra oreja izquierda
       ellipse(520, 117, 35, 25);

   // sombra oreja derecha
       ellipse(680, 117, 35, 25);

  
  
// Cabezita
stroke(123, 99, 24); 
   fill(247, 198, 47);
stroke(123, 99, 24); 
  ellipse(600, 140, 150, 120);
  
   fill(247, 198, 47);
  ellipse(599, 178, 180, 92);
  
  noStroke();
   ellipse(599, 178, 100, 99);
  
  
  
// Moñito
    fill(0); 
    noStroke();

    // centro del moño
ellipse(600, 230, 50, 25); 

// lado izq
triangle(580, 230, 545, 215, 545, 245);
// lado der 
triangle(620, 230, 655, 215, 655, 245);





// ojos negros
noStroke();
   fill(0);
       ellipse(559, 140, 40, 45); // ojo izq
       ellipse(565, 135, 48, 40); // ojo izq
       ellipse(564, 139, 48, 40); // ojo izq

    fill(0);
        ellipse(641, 140, 40, 45); // ojo der
        ellipse(635, 135, 48, 40); // ojo der
        ellipse(636, 139, 48, 40); // ojo der

fill(255); 
ellipse(575, 135, 10, 10); // pupila ojo izq
ellipse(625, 135, 10, 10); // pupila ojo der



// Color para las cejas
fill(0); 
noStroke();
      // ceja izq
           arc(570, 110, 30, 15, PI, TWO_PI);
      // ceja der
           arc(630, 110, 30, 15, PI, TWO_PI);



// cachetes 
  fill(255, 226, 133); // tono crema claro
  
  //cachete izq
       ellipse(550, 175, 60, 45);
  // cachete der
       ellipse(650, 175, 60, 45);
  //  parte central entre cachetes
       ellipse(600, 190, 100, 40);



//Pecas
fill(193, 144, 76); // marrón claro suavecito
// cachete izq
       ellipse(535, 181, 5, 5); // peca 1
       ellipse(548, 170, 5, 5); // peca 2
       ellipse(561, 181, 5, 5); // peca 3

// cachete der
       ellipse(639, 181, 5, 5); // peca 1
       ellipse(652, 170, 5, 5); // peca 2
       ellipse(665, 181, 5, 5); // peca 3



// Nariz base
fill(30); // negro
ellipse(600, 160, 60, 30);

fill(255); // (brillo)
ellipse(590, 153, 20, 10);


  
}

void mouseMoved(){
  line(mouseX, 0, mouseX, 400);
  line(0, mouseY, 800, mouseY);
 
println("X:");
println(mouseX) ;
println("Y:");
println (mouseY) ;

}
