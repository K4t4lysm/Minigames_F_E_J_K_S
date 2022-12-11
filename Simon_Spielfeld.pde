class Spielfeld {

  Feld[][] spielFeld = new Feld[20][20];



  Spielfeld() {

    for (int i = 0; i < spielFeld.length; i++) {
      for (int j = 0; j < spielFeld[0].length; j++) {

        spielFeld[i][j] = new Feld(i, j);
      }
    }
  }


  void display() {

    for (int i = 0; i < spielFeld.length; i++) {
      for (int j = 0; j < spielFeld[0].length; j++) {

        spielFeld[i][j].display();
        if (istInExplosion(P1)) {
          background(0);
          fill(255,0,0);
          textSize(100);
          text("Spieler2 Gewinnt!", width/3, height/2-110);
          gameRunning = false;
          textSize(70);
          fill(0,255,0);
          text("Drücke die Taste p für das Menü", 50, height/2);
          
        }
          
        }
        if (istInExplosion(P2)) {
          background(0);
          fill(255,0,0);
          textSize(100);
          text("Spieler1 Gewinnt!", width/3, height/2-110);
          gameRunning = false;
          textSize(70);
          fill(0,255,0);
          text("Drücke die Taste p für das Menü", 50, height/2);
          
        
        }
        
        
      }
    }
  

  boolean istInExplosion(Spieler s) {
   return spielFeld[s.x][s.y].status.equals("explosion");
  }
}
