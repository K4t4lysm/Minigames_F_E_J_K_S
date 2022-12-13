class Bombe {

  int x; //X-Koordinate der Bomben
  int y; //Y-Koordinate der Bomben
  int zaehler = 0;  /*Zähler, um erst die Bombe 
   erscheinen zu lassen und 
   explodieren*/
  //Reichweite der Explosion
  int reichweite;
  int bombX;
  int bombY;
  int bombX2;
  int bombY2;

  Bombe(Spieler s) {
    reichweite = s.reichweite;
    x = s.x;
    y = s.y;
  }


  void display(int reichweite) {

    if (zaehler < 50) {
      if (feld.spielFeld[x][y].status.equals("explosion")) {
       zaehler = 50;
      }
      image(imgBombe, x*50+25, y*50+25, 50, 50);
    }  
    if (zaehler == 50) {
      explodieren(x, y, reichweite);
    }   
    if (zaehler >= 60) unexplodieren(x, y, reichweite);

    if (gameRunning) zaehler++;
  }

  void explodir(int qx, int qy, int dx, int dy, int dmax, String status) {
    for (int i = 0; i < dmax; i++) {
      int x = qx + dx * i;
      int y = qy + dy * i;
      if (x < 0 || x >= 20) return;
      if (y < 0 || y >= 20) return;
      if (darfdasexplodieren(x, y)) return;
      feld.spielFeld[x][y].status = status;
    }
  }


  void explodieren(int x, int y, int reichweite) {

    for (int i = 0; i < reichweite; i++) {
      
      explodir(x, y, 1, 0, reichweite, "explosion");
      explodir(x, y, -1, 0, reichweite, "explosion");
      explodir(x, y, 0, 1, reichweite, "explosion");
      explodir(x, y, 0, -1, reichweite, "explosion");
    }
  }

  boolean darfdasexplodieren(int x, int y) {
    return (feld.spielFeld[x][y].status.equals("powerUpReichweite")
      || feld.spielFeld[x][y].status.equals("powerUpAnzahl")
      || feld.spielFeld[x][y].status.equals("Fels"));
  }



  void unexplodieren(int x, int y, int reichweite) {
    explodir(x, y, 1, 0, reichweite, "leer");
    explodir(x, y, -1, 0, reichweite, "leer");
    explodir(x, y, 0, 1, reichweite, "leer");
    explodir(x, y, 0, -1, reichweite, "leer");
  }
}
