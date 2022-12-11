void drawCharacter() {  //Spielfigur wird gezeichnet
  fill(255, 0, 0);
  ellipse(playerCell.x + (cellSize/2), playerCell.y + (cellSize/2), cellSize/2, cellSize/2);
}

void FinnkeyPressed() { //Die Spielfigur springt von Zelle zu Zelle wenn die Waende fehlen
  
  if (keyCode == UP && 
  arrayNaviC > 0 &&
  playerCell != goalCell) {
    if (playerCell.walls[0] == false)
      arrayNaviC--;
  } else if (keyCode == RIGHT && 
  arrayNaviR < rows -1 &&
  playerCell != goalCell) {
    if (playerCell.walls[1] == false)
      arrayNaviR++;
  } else if (keyCode == DOWN && 
  arrayNaviC < cols- 1 &&
  playerCell != goalCell) {
    if (playerCell.walls[2] == false)
      arrayNaviC++;
  } else if (keyCode == LEFT && 
  arrayNaviR > 0 &&
  playerCell != goalCell) {
    if (playerCell.walls[3] == false)
      arrayNaviR--;
  }
}

void drawGoal () {  // Definiert die Zielzelle
  goalCell = cells[rows - 1][cols - 1];
  fill(#F4F592);
  rect(goalCell.x + (cellSize/2), goalCell.y + (cellSize/2), cellSize/2, cellSize/2);
}
