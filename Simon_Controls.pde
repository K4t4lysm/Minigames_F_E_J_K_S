
void SimonkeyPressed() {
  
  if (gameRunning) {//If-Anweisung, um zu prüfen, ob das Spiel beendet ist
  //Kontroll-Anweisungen für den ersten Spieler: 
    if (keyCode == UP) {
      if (P2.y!=0 && (feld.spielFeld[P2.x][P2.y-1].status.equals("Stein")
      || feld.spielFeld[P2.x][P2.y-1].status.equals("Fels"))) return;
      P2.y = Math.max(P2.y-1, 0);
    }
    if (keyCode == DOWN) {
      if (P2.y!=19 && (feld.spielFeld[P2.x][P2.y+1].status.equals("Stein")
      || feld.spielFeld[P2.x][P2.y+1].status.equals("Fels"))) return;
      P2.y = Math.min(P2.y+1, 19);
    }
    if (keyCode == RIGHT) {
      if (P2.x!=19 && (feld.spielFeld[P2.x+1][P2.y].status.equals("Stein")
      || feld.spielFeld[P2.x+1][P2.y].status.equals("Fels"))) return;
      P2.x = Math.min(P2.x+1, 19);
    }
    if (keyCode == LEFT) {
      if (P2.x!=0 && (feld.spielFeld[P2.x-1][P2.y].status.equals("Stein")
      || feld.spielFeld[P2.x-1][P2.y].status.equals("Fels"))) return;
      P2.x = Math.max(P2.x-1, 0);
    }
    if (keyCode == BACKSPACE) {//If-Anweisung, um die Bombe zu legen:

      if (P2.anzahlBomben > P2.Bomben.size()) {
        P2.Bomben.add(new Bombe(P2));
      }
    }
    //If-Anweisungen für den zweiten Spieler:
    if (key == 'w' || key == 'W') {
      if (P1.y!=0 && (feld.spielFeld[P1.x][P1.y-1].status.equals("Stein") 
      || feld.spielFeld[P1.x][P1.y-1].status.equals("Fels"))) return;
      P1.y = Math.max(P1.y-1, 0);
    }
    if (key == 's'|| key == 'S') {
      if (P1.y!=19 && (feld.spielFeld[P1.x][P1.y+1].status.equals("Stein")
      || feld.spielFeld[P1.x][P1.y+1].status.equals("Fels"))) return;
      P1.y = Math.min(P1.y+1, 19);
    }
    if (key == 'd'|| key == 'D') {
      if (P1.x!=19 && (feld.spielFeld[P1.x+1][P1.y].status.equals("Stein")
      || feld.spielFeld[P1.x+1][P1.y].status.equals("Fels"))) return;
      P1.x = Math.min(P1.x+1, 19);
    }
    if (key == 'a'|| key == 'A') {
      if (P1.x!=0 && (feld.spielFeld[P1.x-1][P1.y].status.equals("Stein")
      || feld.spielFeld[P1.x-1][P1.y].status.equals("Fels"))) return;
      P1.x = Math.max(P1.x-1, 0);
    }
    //If-Anweisung, um die Bombe zu legen:
    if (keyCode == CONTROL) {

      if (P1.anzahlBomben > P1.Bomben.size()) {
        P1.Bomben.add(new Bombe(P1));
      }
    }
  }
}
