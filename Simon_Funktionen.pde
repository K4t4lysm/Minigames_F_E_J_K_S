void SimonDraw() {
  background(0);
  rectMode(CORNER);
  stroke(1);
  scale(0.8);
  feld.display();
  P1.display();
  P2.display();
  /*P3.display();
   P4.display();
   */
  //Controls();
}


void SimonSetup() {
  
  
}

  Spieler P1;
  Spieler P2;
  Spieler P3;
  Spieler P4;

  Spielfeld feld;



  //Fotos
  PImage img;
  PImage imgBombe;
  PImage imgExplodieren;
  PImage imgpowerUpAnzahl;
  PImage imgpowerUpReichweite;

  boolean gameRunning = true;
