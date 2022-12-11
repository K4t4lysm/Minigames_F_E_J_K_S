void ElonamousePressed () {
  /* Hier werden die "Buttons" für das Anklicken der Städte programmiert, die den darauffolgenden
   Text hervorbringen und die Counter mitzählen lassen. - Weltkartenspiel */
  int diameterKreiseStadtAnklicken = 10;     //lokale Variable für das Anklicken der Städte
  if (inGameWeltkarte == true) {

    //Richtige Städte anklicken
    if (dist(mouseX, mouseY, 409, 219) < diameterKreiseStadtAnklicken) { //Barcelona anklicken
      if (staedte[0] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[0]=true;
    }
    if (dist(mouseX, mouseY, 845, 667) < diameterKreiseStadtAnklicken) { //Sydney anklicken
      if (staedte[1] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[1]= true;
    }
    if (dist(mouseX, mouseY, 490, 623) < diameterKreiseStadtAnklicken) { //Johannesburg anklicken
      if (staedte[2] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[2]= true;
    }
    if (dist(mouseX, mouseY, 450, 157) < diameterKreiseStadtAnklicken) { //Berlin anklicken
      if (staedte[3] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[3]= true;
    }
    if (dist(mouseX, mouseY, 205, 223) < diameterKreiseStadtAnklicken) { //New-York City anklicken
      if (staedte[4] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[4]= true;
    }
    if (dist(mouseX, mouseY, 744, 240) < diameterKreiseStadtAnklicken) { //Peking anklicken
      if (staedte[5] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[5]= true;
    }
    if (dist(mouseX, mouseY, 272, 598) < diameterKreiseStadtAnklicken) { //Rio de Janeiro anklicken
      if (staedte[6] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[6]= true;
    }
    if (dist(mouseX, mouseY, 639, 300) < diameterKreiseStadtAnklicken) { //Delhi anklicken
      if (staedte[7] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[7]= true;
    }
    if (dist(mouseX, mouseY, 390, 270) < diameterKreiseStadtAnklicken) { //Marrakesch anklicken
      if (staedte[8] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[8]= true;
    }
    if (dist(mouseX, mouseY, 110, 350) < diameterKreiseStadtAnklicken) { //Marrakesch anklicken
      if (staedte[9] == false) {
        richtigeAntwortenCounterWeltkartenspiel += 1;
      }
      staedte[9]= true;
    }


    //Randomstädte anklicken
    if (dist(mouseX, mouseY, 71, 209) < diameterKreiseStadtAnklicken) { //RandomStadt1 anklicken
      mausZeiger(255, 10, 0);
      fakeStaedte [0]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 573, 234) < diameterKreiseStadtAnklicken) { //RandomStadt2 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [1]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 213, 419) < diameterKreiseStadtAnklicken) { //RandomStadt3 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [2]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 424, 342) < diameterKreiseStadtAnklicken) { //RandomStadt4 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [3]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 504, 134) < diameterKreiseStadtAnklicken) { //RandomStadt5 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [4]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 165, 471) < diameterKreiseStadtAnklicken) { //RandomStadt6 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [5]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 479, 422) < diameterKreiseStadtAnklicken) { //RandomStadt7 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [6]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 794, 597) < diameterKreiseStadtAnklicken) { //RandomStadt8anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [7]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 475, 232) < diameterKreiseStadtAnklicken) { //RandomStadt9 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [8]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
    if (dist(mouseX, mouseY, 253, 154) < diameterKreiseStadtAnklicken) { //RandomStadt10 anklicken
      mausZeiger(255, 0, 0);
      fakeStaedte [9]= true;
      fehlerCounterWeltkartenspiel+=1;
    }
  }
}
