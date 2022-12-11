//Städtenamen eingeblendet auf der Karte - Weltkartenspiel
void StaedteText (String Stadtname, int xKoordinate, int yKoordinate) {
  textSize(20);
  text (Stadtname, xKoordinate, yKoordinate);
}

//Städtenamen eingeblendet auf der Liste - Weltkartenspiel
void StaedteListe (String Stadtname, int xKoordinate, int yKoordinate, int farbe1, int farbe2, int farbe3) {
  fill(farbe1, farbe2, farbe3);
  textSize(20);
  text (Stadtname, xKoordinate, yKoordinate);
}

//Text beim Anklicken einer falschen Stadt - Weltkartenspiel
void TextBeiFalschemAnklicken(int xKoordinate, int yKoordinate) {
  textSize(20);
  fill(255, 0, 0);
  text ("Falsch", xKoordinate, yKoordinate);
}
