//Hier werden die Punkte für die Städte und die Fake-Städte gezeichnet

//Echte Städte - Weltkartenspiel
void zeichneBarcelonaPunkt() {
  fill(0);
  ellipse(409, 219, 10, 10); //Barcelona
  StaedteListe("Barcelona", 1013, 150, 255, 255, 255);
}

void zeichneSydneyPunkt() {
  fill(0);
  ellipse (845, 667, 10, 10); //Sydney
  StaedteListe("Sydney", 1013, 180, 255, 255, 255);
}

void zeichneJohannesburgPunkt() {
  fill(0);
  ellipse (490, 623, 10, 10); //Johannesburg
  StaedteListe("Johannesburg", 1013, 210, 255, 255, 255);
}

void zeichneBerlinPunkt() {
  fill(0);
  ellipse (445, 157, 10, 10); //Berlin
  StaedteListe("Berlin", 1013, 240, 255, 255, 255);
}

void zeichneNewYorkCityPunkt() {
  fill(0);
  ellipse (205, 223, 10, 10); //New York City
  StaedteListe("New York City", 1013, 270, 255, 255, 255);
}

void zeichnePeking() {
  fill(0);
  ellipse (744, 240, 10, 10);
  StaedteListe("Peking", 1013, 300, 255, 255, 255);
}

void zeichneRioDeJaneiro() {
  fill(0);
  ellipse (272, 598, 10, 10);
  StaedteListe("Rio de Janeiro", 1013, 330, 255, 255, 255);
}

void zeichneDelhi() {
  fill(0);
  ellipse (639, 300, 10, 10);
  StaedteListe("Delhi", 1013, 360, 255, 255, 255);
}
void zeichneMarrakesch() {
  fill(0);
  ellipse (390, 270, 10, 10);
  StaedteListe("Marrakesch", 1013, 390, 255, 255, 255);
}

void zeichneMexikoStadt() {
  fill(0);
  ellipse (110, 350, 10, 10);
  StaedteListe("Mexiko Stadt", 1013, 420, 255, 255, 255);
}




//Random Städte zeichnen - Weltkartenspiel
void zeichneRandomStadt1 () {
    fill(0);
  ellipse (71, 209, 10, 10);
}

void zeichneRandomStadt2 () {
    fill(0);
  ellipse (573, 234, 10, 10);
}

void zeichneRandomStadt3 () {
    fill(0);
  ellipse (213, 419, 10, 10);
}

void zeichneRandomStadt4 () {
    fill(0);
  ellipse (424, 342, 10, 10);
}

void zeichneRandomStadt5 () {
    fill(0);
  ellipse (504, 134, 10, 10);
}

void zeichneRandomStadt6 () {
    fill(0);
  ellipse (165, 471, 10, 10);
}

void zeichneRandomStadt7 () {
    fill(0);
  ellipse (479, 422, 10, 10);
}

void zeichneRandomStadt8() {
    fill(0);
  ellipse (794, 597, 10, 10);
}

void zeichneRandomStadt9 () {
    fill(0);
  ellipse (475, 232, 10, 10);
}

void zeichneRandomStadt10 () {
    fill(0);
  ellipse (253, 154, 10, 10);
}



//Grüner Punkt, der dem Mauszeiger folgt und bei Falschbeantwortung rot wird -Weltkartenspiel
void mausZeiger (int farbe1, int farbe2, int farbe3) {
  noStroke(); //Mauszeiger
  rectMode(CENTER);
  fill(farbe1, farbe2, farbe3);
  rect(mouseX, mouseY, 10, 10);
}
