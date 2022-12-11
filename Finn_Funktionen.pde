class Cell {
  //x,y Koordinate der Zellen (wie bei rect)
  int x;
  int y;
  //Position der Zelle
  int thisRow;
  int thisCol;

  boolean visited = false;  //Wurde die Zelle bsucht?
  boolean [] walls = {true, true, true, true};  //Waende der Zelle
  ArrayList<Cell> neighbours = new ArrayList<Cell>();  //Nachbarzellen zur Erstellung des Labyrinths

  Cell (int row, int col) {  //Cell Objekte werden definiert
    x = row * cellSize;
    y = col * cellSize;
    thisRow = row;
    thisCol = col;
  }

  void show () {  //Die Waende der Cell Obejekte werden sichtbar gemacht
    if (walls[0])  buildWall(x, y, x + cellSize, y);
    if (walls[1])  buildWall(x + cellSize, y, x + cellSize, y + cellSize);
    if (walls[2])  buildWall(x + cellSize, y + cellSize, x, y + cellSize);
    if (walls[3])  buildWall(x, y + cellSize, x, y);
  }

  //sammelt NachbarZellen von currentCell in der neighbours ArrayList
  void addNeighbours() {
    if (thisRow > 0) neighbours.add(cells[thisRow - 1][thisCol]);

    if (thisCol <  cols - 1) neighbours.add(cells[thisRow][thisCol + 1]);

    if (thisRow < rows - 1)  neighbours.add(cells[thisRow + 1][thisCol]);

    if (thisCol > 0) neighbours.add(cells[thisRow][thisCol - 1]);
  }

  //Definiert ob Nachbarzellen unbesucht sind
  boolean hasUnvisitedNeighbours() {
    for (Cell neighbour : neighbours) {
      if (!neighbour.visited) {
        return true;
      }
    }
    return false;
  }

  //ein zufaelliger unbesuchter Nachbar wird ausgewaehlt
  Cell pickRandomNeighbour() {
    Cell ngbr = neighbours.get(floor(random(0, neighbours.size())));
    while (ngbr.visited) {
      neighbours.remove(ngbr);
      ngbr = neighbours.get(floor(random(0, neighbours.size())));
    }
    ngbr.visited = true;
    neighbours.remove(ngbr);
    return ngbr;
  }
} //End of class Cell

//entfernt die Waende
void removeWall(Cell current, Cell next) {  
  int xDistance = current.thisRow - next.thisRow;
  int yDistance = current.thisCol - next.thisCol;

  if (xDistance == -1) {
    current.walls[1] = false;
    next.walls[3] = false;
  } else if (xDistance == 1) {
    current.walls[3] = false;
    next.walls[1] = false;
  }
  if (yDistance == -1) {
    current.walls[2] = false;
    next.walls[0] = false;
  } else if (yDistance == 1) {
    current.walls[0] = false;
    next.walls[2] = false;
  }
}

//Hier wird bestimmt wie die Waende aussehen
void buildWall(int x1, int y1, int x2, int y2) {
  int dm = cellSize/2;
  int rdm = dm-5;
  noStroke();
  for (int i = 0; i <= (x2-x1)/dm ||
    i <= (x1-x2)/dm &&
    i <= (y1-y2)/dm ||
    i <= (y2-y1)/dm; i++) {
    rectMode(CENTER);
    if (y1 == y2) {
      fill(#734990);
      rect(x1 +(i*dm), y1, rdm, rdm);
      fill(#7B5793);
      ellipse(x1 +(i*dm), y1, dm, dm);
    } else if (x1 == x2) {
      fill(#734990);
      rect(x1, y1 +(i*dm), rdm, rdm);
      fill(#7B5793);
      ellipse(x1, y1 +(i*dm), dm, dm);
    } else {
      println("ERROR: Invalid Wall Placement");
    }
  }
}
