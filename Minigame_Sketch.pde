/* Minigame Simon, Elona, Kautar, Finn, Johnny
 */

//boolean status = true;
//boolean elonaSpiel = false;
//boolean simonSpiel = false;
//boolean johnnySpiel = false;
//boolean kautarSpiel = false;
//boolean finnSpiel = false;
boolean johnnyEndGame = false;

String spielStatus = "Menu";

void setup() {
  size(1200, 900);
  // Simon:
  P1 = new Spieler(0, 0);
  P2 = new Spieler(19, 19);
  /*P3 = new Spieler();
   P4 = new Spieler();
   */
  frameRate(60);


  feld = new Spielfeld();

  imgpowerUpAnzahl = loadImage("BombenAnzahl.png");
  imgpowerUpReichweite = loadImage("BombenReichweite.png");
  imgExplodieren = loadImage("Explodieren.png");
  imgBombe = loadImage("Bombe.png");
  imgBombe.resize(50, 50);
  img = loadImage("Bomberman.png");
  img.resize(50, 50);

  //Elona:
  weltkarte = loadImage("Weltkarte.png");
  globus = loadImage("globusicon.png");
  gewonnenWeltkarte = new SoundFile(this, "WinSound.wav");  //User: Eponn, on freesound.org, Soundname: Achievement Happy Beeps Jingle
  verlorenWeltkarte = new SoundFile(this, "LoseSound.wav"); //User: Fupicat, on freesound.org, Soundname: 8bit Fall

  //Kautar:
  
  xPosition = width* 0.1; // Start Position
  yPosition = 600;

  for (int i = 0; i < xstar.length; i++) {//Sterne
    xstar[i] = (int)random(0, width);
    ystar[i] = (int)random(0, height);
  }
  // Movement für bloecke, damit diese in Bewegung bleiben
  flyX = width ;//50 ;// X - 50 damit block im bild ist und nicht aus dem bild verschwindet
  flyX1 = width +350;//-500;
  flyX2 = width +700;//-800;
  
  
  //Finn:
  rows = width / cellSize;
  cols = height / cellSize;
  cells = new Cell[rows][cols];

  //for Schleife erstellt alle Zellen
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      cells[i][j] = new Cell(i, j);
    }
  }

  //for Schleife fuellt die ArrayList "neighbours" in "class Cell" mit NachbarZellen
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      cells[i][j].addNeighbours();
    }
  }

  //Startposition des Generators
  currentMazeCell = cells[0][0];
  currentMazeCell.visited = true;

  println("LabyrithSpiel von Finn Eric Hinkes");
  
  
  
  noStroke();
 

  rectMode(CENTER);
  noStroke();

  //If-Anweisungen, um durch die Spiele zu steuern:
  if (spielStatus.equals("elonaSpiel")) {
    ElonaSetup();
  }
  if (spielStatus.equals("simonSpiel")) {
    SimonSetup();
  }
  if (spielStatus.equals("johnnySpiel")) {
    //JohnnySetup();
  }
  if (spielStatus.equals("kautarSpiel")) {
    //KautarSetup();
  }
  if (spielStatus.equals("finnSpiel")) {
    FinnSetup();
  }
}


void draw() {

println(spielStatus);
  if (spielStatus.equals("Menu")) {
    background(0);
    textAlign(CENTER);
    textSize(50);
    fill(0, 255, 0);
    text("Geographie-Spiel     press g to start", width/2, height/2-100);
    text("Bomberman               press b to start", width/2, height/2-50);
    text("Johnny            _           press j to start",width/2, height/2);
    text("Kautar                           press k to start", width/2, height/2+50);
    text("Finn                                press f to start", width/2, height/2+100);
  }

  if (spielStatus.equals("elonaSpiel")) {
    ElonaDraw();
  } else  if (spielStatus.equals("simonSpiel")) {

    SimonDraw();
  } else if (spielStatus.equals("johnnySpiel")) {
    //JohnnyDraw();
    if (spielStatus.equals("johnnySpiel"))johnnyEndGame = true;
    if (johnnyEndGame) {
      background(0);
      textSize(80);
      text("Drücke die Taste p, \num wieder ins Menü zu kommen", 50, 80);
    }
  } else if (spielStatus.equals("kautarSpiel")) {
    rectMode(CORNER);
    KautarDraw();
  } else if (spielStatus.equals("finnSpiel")) {
    FinnDraw();
  }
}


void mousePressed() {

  if (key == 'p')spielStatus = "Menu";

  if (spielStatus.equals("elonaSpiel")) {
    ElonamousePressed();
  } else if (spielStatus.equals("simonSpiel")) {
    //SimonmousePressed();
  } else if (spielStatus.equals("johnnySpiel")) {
    //JohnnymousePressed();
  } else if (spielStatus.equals("kautarSpiel")) {
    //KautarmousePressed();
  } else if (spielStatus.equals("finnSpiel")) {
    //FinnmousePressed();
  }
}


void keyPressed() {
  if(key == 'p')spielStatus = "Menu";
  if(spielStatus.equals("Menu"))
    Menu();
  if (spielStatus.equals("elonaSpiel")) {
    //ElonakeyPressed();
  }
  if (spielStatus.equals("simonSpiel")) {
    SimonkeyPressed();
  }
  if (spielStatus.equals("johnnySpiel")) {
    //JohnnykeyPressed();
  }
  if (spielStatus.equals("kautarSpiel")) {
    //KautarkeyPressed();
  }
  if (spielStatus.equals("finnSpiel")) {
    FinnkeyPressed();
  }
}
void Menu() {
  if (key == 'g') {
    spielStatus = "elonaSpiel";
  } else if (key == 'b')
    spielStatus = "simonSpiel";
  else if (key == 'j')
    spielStatus = "johnnySpiel";
  else if (key == 'k')
    spielStatus = "kautarSpiel";
  else if (key == 'f')
    spielStatus = "finnSpiel";
}