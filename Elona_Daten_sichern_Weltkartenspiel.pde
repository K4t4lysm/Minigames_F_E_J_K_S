void savePunkteWeltkartenspiel (){      //Daten des Weltkartenspiels werden für das letzte Spiel gespeichert
String [] punkte = new String [3]; 

  punkte[0] = nf(richtigeAntwortenCounterWeltkartenspiel, 3) + " Richtige Antworten";
  punkte[1] = nf(fehlerCounterWeltkartenspiel, 3) + " Anzahl der Fehler";     
  punkte[2] = nf(punkteStandWeltkartenspiel, 3) + " Punkte am Ende des Spiels";
 
  saveStrings("punkteGeographiespiel.txt", punkte);
  
}
