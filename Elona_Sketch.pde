import processing.sound.*;       //Sound Weltkartenspiel
SoundFile gewonnenWeltkarte;
SoundFile verlorenWeltkarte;

PImage weltkarte;
PImage globus;

boolean [] staedte = new boolean [10];  //Städte als boolean für das Weltkartenspiel
/* staedte[0]= Barcelona, staedte[1]= Sydney, staedte[2]= Johannesburg,
 staedte[3]= Berlin, staedte[4]= New York City, staedte[5]= Peking,
 staedte[6] = Rio de Janeiro, staedte[7], staedte[8] = Marrakesch,
 staedte[9] = Mexiko-Stadt */
boolean [] fakeStaedte = new boolean [10]; /*hier sind Fake-Städte aufgelistet,
 um den Spieler zu verwirren*/
//für das Weltkartenspiel

int fehlerCounterWeltkartenspiel = 0;      //Counter für das Weltkartenspiel
int richtigeAntwortenCounterWeltkartenspiel = 0;
int punkteStandWeltkartenspiel = 0;

int rotationsVariableWeltkarte=1;         //Rotationsvariable für das Weltkartenspiel

boolean startBildschirmWeltkarte = false;  //Bildschirmmodi Weltkartenspiel
boolean inGameWeltkarte= false;
boolean endBildschirmWeltkarte = false;


void ElonaSetup() {

  //Laden Bilder Weltkartenspiel

  for (int i = 0; i < staedte.length; i++) {     //Initialisierung Städte (Weltkartenspiel)
    staedte [i] = false;
  }
  for (int i = 0; i < staedte.length; i++) {    //Initialisierung Fake-Städte (Weltkartenspiel)
    fakeStaedte [i] = false;
  }


  println("Das Geographiespiel wurde programmiert von Elona Stein.");
}

void ElonaDraw() {

  //Weltkartenspiel Startbildschirm
  if (startBildschirmWeltkarte == false) {
    background(0, 48, 93);

    //rotierender Globus
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rotationsVariableWeltkarte));
    image(globus, 0, 0);
    rotationsVariableWeltkarte--;
    popMatrix();

    //Starttext
    textSize(40);
    textAlign(CENTER);
    text("Geographiespiel", width/2, 300);
    textSize(25);
    text("Suche im nächsten Spiel die rechts stehenden Städte.", width/2, 350);
    text("Wenn du alle gefunden hast, gewinnst du.", width/2, 400);
    text("Wenn du fünf Fehler hast, verlierst du", width/2, 450);
    text("von Elona Stein", 1096, 39);
    text("Aber pass auf! Deine Fehlerpunkte minimieren deinen Score!", width/2, 500);
    textSize(40);
    text("Drücke s zum Starten.", width/2, 650);


    //Spielstarten
    if (keyPressed && (key == 's'|| key == 'G')) {
      startBildschirmWeltkarte = true;
      inGameWeltkarte = true;
    }
  }
  //In-Game-Modus Weltkartenspiel
  if (inGameWeltkarte == true) {
    background(0, 48, 93);
    image(weltkarte, 0, 0, 1000, 800);

    //Städte Punkte zeichnen
    fill(0);
    textAlign(LEFT);
    zeichneBarcelonaPunkt();
    zeichneSydneyPunkt();
    zeichneJohannesburgPunkt();
    zeichneBerlinPunkt();
    zeichneNewYorkCityPunkt();
    zeichnePeking();
    zeichneRioDeJaneiro();
    zeichneDelhi();
    zeichneMarrakesch();
    zeichneMexikoStadt();

    //Random Städte Punkte zeichnen
    zeichneRandomStadt1();
    zeichneRandomStadt2();
    zeichneRandomStadt3();
    zeichneRandomStadt4();
    zeichneRandomStadt5();
    zeichneRandomStadt6();
    zeichneRandomStadt7();
    zeichneRandomStadt8();
    zeichneRandomStadt9();
    zeichneRandomStadt10();

    //Mauszeigerfarben
    mausZeiger(0, 255, 0);

    //Städte-Text die beim Anklicken erscheinen - Weltkartenspiel
    fill(0);
    if (staedte[0] == true) { //Barcelona
      StaedteText("Barcelona", 415, 219);
      StaedteListe("Barcelona", 1013, 150, 0, 255, 0);
    }
    if (staedte[1] == true) { //Sydney
      fill(0);
      StaedteText("Sydney", 850, 667);
      StaedteListe("Sydney", 1013, 180, 0, 255, 0);
    }
    if (staedte[2] == true) { //Johannesburg
      fill(0);
      StaedteText("Johannesburg", 500, 623);
      StaedteListe("Johannesburg", 1013, 210, 0, 255, 0);
    }
    if (staedte[3] == true) { //Berlin
      fill(0);
      StaedteText("Berlin", 450, 157);
      StaedteListe("Berlin", 1013, 240, 0, 255, 0);
    }
    if (staedte[4] == true) { //New York City
      fill(0);
      StaedteText("New York City", 210, 223);
      StaedteListe("New York City", 1013, 270, 0, 255, 0);
    }
    if (staedte[5] == true) { //Peking
      fill(0);
      StaedteText("Peking", 750, 240);
      StaedteListe("Peking", 1013, 300, 0, 255, 0);
    }
    if (staedte[6] == true) { //Rio de Janeiro
      fill(0);
      StaedteText("Rio de Janeiro", 280, 600);
      StaedteListe("Rio de Janeiro", 1013, 330, 0, 255, 0);
    }
    if (staedte[7] == true) { //Delhi
      fill(0);
      StaedteText("Delhi", 650, 300);
      StaedteListe("Delhi", 1013, 360, 0, 255, 0);
    }
    if (staedte[8] == true) { //Marrakesch
      fill(0);
      StaedteText("Marrakesch", 400, 270);
      StaedteListe("Marrakesch", 1013, 390, 0, 255, 0);
    }
    if (staedte[9] == true) { //Mexiko Stadt
      fill(0);
      StaedteText("Mexiko Stadt", 120, 350);
      StaedteListe("Mexiko Stadt", 1013, 420, 0, 255, 0);
    }

    //Fake-Städte "Falsch"-Text beim Anklicken
    fill(0);
    if (fakeStaedte[0] == true) { //RandomStadt1
      TextBeiFalschemAnklicken(80, 209);
    }
    if (fakeStaedte[1] == true) { //RandomStadt2
      TextBeiFalschemAnklicken(580, 234);
    }
    if (fakeStaedte[2] == true) { //RandomStadt3
      TextBeiFalschemAnklicken(220, 419);
    }
    if (fakeStaedte[3] == true) { //RandomStadt4
      TextBeiFalschemAnklicken(430, 342);
    }
    if (fakeStaedte[4] == true) { //RandomStadt5
      TextBeiFalschemAnklicken(510, 134);
    }
    if (fakeStaedte[5] == true) { //RandomStadt6
      TextBeiFalschemAnklicken(170, 471);
    }
    if (fakeStaedte[6] == true) { //RandomStadt7
      TextBeiFalschemAnklicken(490, 422);
    }
    if (fakeStaedte[7] == true) { //RandomStadt8
      TextBeiFalschemAnklicken(800, 597);
    }
    if (fakeStaedte[8] == true) { //RandomStadt9
      TextBeiFalschemAnklicken(480, 232);
    }
    if (fakeStaedte[9] == true) { //RandomStadt10
      TextBeiFalschemAnklicken(260, 154);
    }

    //Countertext
    fill(255);
    text("Falsche Städte: " +  fehlerCounterWeltkartenspiel, 1013, 70);
    text("Richtige Städte: " + richtigeAntwortenCounterWeltkartenspiel, 1013, 40);


    //Weltkartenspiel geschafft
    if (staedte[0] == true && staedte [1] == true && staedte[2] == true && staedte [3] == true && staedte[4] == true && staedte [5] == true && staedte [6] == true && staedte[7] == true && staedte [8] == true && staedte[9] == true) {
      inGameWeltkarte= false;
      endBildschirmWeltkarte = true;
    }

    //Weltkartenspiel verloren
    if (fehlerCounterWeltkartenspiel >= 5) {
      inGameWeltkarte= false;
      endBildschirmWeltkarte = true;
    }

    //Endbildschirm
    if (endBildschirmWeltkarte == true) {
      if (richtigeAntwortenCounterWeltkartenspiel >= 10) {
        for (int i = 0; i <= 7000; i+=190) {      //Gitter Gewonnen
          for (int j = 0; j <= 7000; j+=190) {
            pushMatrix();
            translate(-90, -90);
            textAlign(LEFT);
            textSize(20);
            fill(0, 48, 93, 50);
            text("Gewonnen", i, j, i, j);
            popMatrix();
          }
        }
        pushMatrix();              //Quadrat Gewonnen
        translate(500, height/2);
        fill(0, 48, 93, 200);
        rect(0, 0, 400, 400);
        popMatrix();
        fill(255);
        textSize(50);
        textAlign(CENTER);
        text("Gewonnen!", 500, height/2);
        gewonnenWeltkarte.cue(0);                 //Sound gewonnen
        gewonnenWeltkarte.play();
      } else if (fehlerCounterWeltkartenspiel >= 5) {
        for (int i = 0; i <= 2000; i+=150) {      //Gitter Verloren
          for (int j = 0; j <= 2000; j+=150) {
            pushMatrix();
            translate(-60, -60);
            textAlign(LEFT);
            textSize(20);
            fill(0, 48, 93, 50);
            text("Verloren", i, j, i, j);
            popMatrix();
          }
        }
        pushMatrix();                  //Quadrat verloren
        translate(500, height/2);
        fill(0, 48, 93, 200);
        rect(0, 0, 400, 400);
        popMatrix();
        fill(255);
        textAlign(CENTER);
        textSize(50);
        text("Verloren!", 500, height/2);
        textSize(20);
        text("Hättest du mal im", 500, height/2+150);
        text("Geographieunterricht besser aufgepasst...", 500, height/2+180);
        verlorenWeltkarte.cue(0);      //Sound verloren
        verlorenWeltkarte.play();
      }
      punkteStandWeltkartenspiel = richtigeAntwortenCounterWeltkartenspiel - fehlerCounterWeltkartenspiel;  //Score berechnen
      textSize(25);
      text("Dein Punktestand beträgt " + punkteStandWeltkartenspiel, 500, height/2+50);    //Score Text
      switch(punkteStandWeltkartenspiel) {    //Gratulationstext
      case 6:
        text("Gerade so gewonnen!", 500, height/2+150);
        break;
      case 7:
        text("Juhu, gewonnen!", 500, height/2+150);
        break;
      case 8:
        text("Juhu, gewonnen!", 500, height/2+150);
        break;
      case 9:
        text("Sehr gutes Ergebnis!", 500, height/2+150);
        break;
      case 10:
        text("Das bestmögliche Ergebnis! Super!", 500, height/2 + 150);
        break;
      }
      savePunkteWeltkartenspiel ();      //Speichern der richtigen und falschen Antworten sowie des Punktestands
      fill(0,255,0);
      text("Drücke p,\num in das Menü zurückzukehren",500,height/2-150);
    }
  }

}
