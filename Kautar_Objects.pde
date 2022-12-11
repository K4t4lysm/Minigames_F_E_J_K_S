//block  Hinderniss
void block() {
  //bloecke
  fill(200);
  ellipse(flyX, flyY, blockRadius, blockRadius);
  ellipse(flyX1, flyY, blockRadius, blockRadius);
  ellipse(flyX2, flyY, blockRadius, blockRadius);
}

//Block/Hinderniss, der wieder vom Punkt aus reinfliegt = Wirkung wie endlose schleife
void gegner() { // damit Block1 wieder von vorne rein fligt

  if (flyX + 100 < 0) { // 100 wegen der block breite
    flyX = width -50 ;
  }
  if (flyX1 +100 < 0) {
    flyX1 = width -50;
  }
  if (flyX2 +100 < 0) {
    flyX2 = width -50;
  }
}


// Wenn Spieler gegen jeeweiligen block kommt
void collision() {
  if (dist(xPosition, yPosition, flyX, flyY ) < 80 ) {
    background(0);
    alive = false;
  }
  if (dist(xPosition, yPosition, flyX1, flyY ) < 80 ) {
    background(0);
    alive = false;
  }
  if (dist(xPosition, yPosition, flyX2, flyY ) < 80 ) {
    background(0);
    alive = false;
  }
}


//Funktion für losing
void lose() {
  background(250);
  fill(0);
  textSize(50);
  text("HighScore: " + counter, height/2, width/2);
  text("Um in das Hauptmenü zu gelangen, drücke p", 100, height/2);
}





//Funktion für HighScore count
void highScore() {
  if (frameRate%60 == 0) {
    counter++;
  }
}

// game background
void hintergrund() {
  background(0);
  //Moon
  fill(250); 
  ellipse(810, 100, 50, 50);
  //transparenz
  fill(250, 50);
  ellipse(810, 100, 80, 80);
}


//star background
void stars() {
  for (int i = 0; i < xstar.length; i++) {
    noStroke();
    fill(250);
    ellipse(xstar[i], ystar[i], 5, 5);
  }
}

// crazy Smiliey
void smiley() {
  scale(growing); // scale smiley
  translate(random(1000), random(800)); // translate Smiley
  fill(#f4e800);
  ellipse(50, 50, 100, 100);

  fill(0);
  ellipse(50-20, 50-20, 20, 20);

  fill(0);
  ellipse(50+20, 50-20, 20, 20);

  arc(50, 50, 50, 50, radians(0), radians(180));

  growing= growing + 1; // growinng smiley
  if (growing > 2) {
    frameRate(3);
    growing= growing -2;
  }
}
