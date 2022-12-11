class Spieler {

  int x;//x-Koordinate
  int y;//y-Koordinate
  
  int anzahlBomben = 1; //Anzahl an tragbaren Bomben
  
  ArrayList<Bombe> Bomben = new ArrayList<Bombe>();  //ArrayList 
                                //für die Klasse "Bomben"
  
  boolean lebtNoch = true;  //boolean für gewinnen/verlieren
  int reichweite = 2; //Reichweite für die Bomben
  
  Spieler(int x, int y) { //Constructor für die Klasse Spieler

    this.x = x;
    this.y = y;
    
  }


  void display() {

//Funktion, um den Spieler erscheinen zu lassen
    image(img, x*50+25, y*50+25, 50, 50);
    
    //Hier bitte anpassen!!!!
    /*
    for (Bombe bombe : Bomben) {
      bombe.display();
      if(bombe.zaehler > 225){
        Bomben.remove(bombe);
      }
     }
     */
     //For-Schleife, um die Bomben erscheinen zu lassen
     for(int i = 0; i < Bomben.size(); i++)
     {
       Bomben.get(i).display(reichweite);
      if(Bomben.get(i).zaehler > 200){
        Bomben.remove(i);
      }
     }
     
     
     //If-Anweisungen für die Powerups:
     
    if(feld.spielFeld[x][y].status.equals("powerUpReichweite")){
      reichweite++;
      feld.spielFeld[x][y].status = "leer";
    }
    
     if(feld.spielFeld[x][y].status.equals("powerUpAnzahl")){
      anzahlBomben++;
      feld.spielFeld[x][y].status = "leer";
    }
    
  }
}
