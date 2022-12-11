// Maze Generator
int cellSize = 100;

int cols;
int rows;
Cell[][] cells;  //Cell Array in dem die Cell Objekte gespeichert werden

Cell currentMazeCell;  //aktulle Zelle des Generators
ArrayList<Cell> mazeStack = new ArrayList<Cell>();
boolean isMazeFinished = false;

//Gameplay
Cell playerCell;  //Spieler Cell Objekt
int arrayNaviR = 0, arrayNaviC = 0;  //Variablen um die Spieler Zelle zu aendern
Cell goalCell;  //Ziel Cell Objekt

void FinnSetup () {


 
}

void FinnDraw () {
  frameRate(60);

  background(#D1AAEA);

  //Labyrinth generieren

  for (int i = 0; i < rows; i++) {    //zeichnet alle Zellen
    for (int j = 0; j < cols; j++) {
      cells[i][j].show();
    }
  }

  /*aus irgendeinem Grund haben diese Mauern an (rein optische) Luecken
   ohne das diese gewollt waren. Beim Ersetzen durch line()) trat das nicht auf.
   Diese zwei Funktionen fuellen sie provisorisch*/
  buildWall(0, (cellSize/2), 0, (cellSize * cols) - (cellSize/2));
  buildWall((cellSize/2), cellSize * cols, (cellSize * rows) - (cellSize/2), cellSize * cols);


  //Geht alle Zellen durch und entfernt Waende
  if (currentMazeCell.hasUnvisitedNeighbours()) {
    Cell nextCurrent = currentMazeCell.pickRandomNeighbour();
    mazeStack.add(currentMazeCell);
    removeWall(currentMazeCell, nextCurrent);
    currentMazeCell = nextCurrent;
  } else if (mazeStack.size() > 0) {
    Cell nextCurrent = mazeStack.get(mazeStack.size() - 1);
    mazeStack.remove(nextCurrent);
    currentMazeCell = nextCurrent;
  } else {
    isMazeFinished = true;
  }


  //Gameplay wird gestartet sobald der Generator fertig ist

  if (isMazeFinished == true) {
    fill(#F4F592);
    textAlign(CENTER);
    textSize(30);
    text("Finde den Weg heraus, benutze die Pfeiltasten", width/2, 25);

    drawGoal();  //Ziel-Zelle wird gezeichnet

    playerCell = cells[arrayNaviR][arrayNaviC];  // Cell Objekt des Spielers
    drawCharacter();  //Spielfigur

    if (playerCell == goalCell) {  //Wenn das Ziel erreicht wird
      fill(0, 80);
      rect(width/2, height/2, width, height);
      fill(#F4F592);
      textAlign(CENTER);
      textSize(50);
      text("You found the Way", width/2, height/2);
      textSize(30);
      text("Drücke p, um ins Menü zurück zu kehren", width/2, height/2 +50);
      
    }
  }
} //End of draw
