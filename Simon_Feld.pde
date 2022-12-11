class Feld {

  int x;
  int y;
  int feldGroesse = 50;

  String status;
  String[] powerUp = {"powerUpAnzahl","powerUpReichweite"};
  int index = int(random(powerUp.length));

  Feld(int x, int y) {

    if (random(8) < 5 && !(x+y < 2) && !(x+y > 36)) {
      status = "Stein";
    } else if(random(5) < 1 && !(x+y <2) && !(x+y > 36)){
      status = powerUp[index];
    } else if(random(3) < 1 && !(x+y < 2) && !(x+y > 36)){
      status = "Fels";
    }
    else {
      status = "leer";
    }
    this.x = x;
    this.y = y;
  }

  void farbe() {

    if (status.equals("Stein")) {
      fill(112);
    } else if(status.equals("Fels")){
      fill(0);
    }
    else {
      fill(255);
    }
  }
  void display() {

    farbe();
    rect(x*feldGroesse+25, y*feldGroesse+25, feldGroesse, feldGroesse);
    if (status.equals("explosion")) {
      image(imgExplodieren, x*50+25, y*50+25, 50, 50);
    }  else if (status.equals("powerUpAnzahl")) { 
      image(imgpowerUpAnzahl, x*50+25, y*50+25, 50, 50);
    } else if (status.equals("powerUpReichweite")) {
      image(imgpowerUpReichweite, x*50+25, y*50+25, 50, 50);
    }
    
    //for(int i = 0; i < Spielfeld.Feld.length; i++){
      //for(int j = 0; j < Spielfeld.Feld.length; j++){
       //if(Spielfeld.Feld[i][j] 
      //}
      
    //        }
  }
}
