void combat() {
  //show rangespeedyj
  if (combat) {
    if (ship)
      kreis(shipx[0], shipy[0]);
    else if (ship==false)
      kreis(shipx[1], shipy[1]);
  }




  //player 2 attack
  if (combat&&key==' '&&ship==false && dist(shipx[0], shipy[0], mouseX, mouseY) < 19
    && dist(shipx[0], shipy[0], shipx[1], shipy[1]) < 495) {
    //crit chance
    chance = random(0, 100);
    if (chance>=90)
      crit=2;
    else if (chance<85)
      crit=1;
    //chance to miss
    if (chance<dist(shipx[1], shipy[1], shipx[0], shipy[0])/20)
      schaden = 0;
    else if (chance>dist(shipx[1], shipy[1], shipx[0], shipy[0])/20)
      schaden = 25-(dist(shipx[1], shipy[1], shipx[0], shipy[0])/20);
    hp[0] = hp[0]-schaden;
    combat=false;
    ship = !ship;
    steps=20;
  }
  //player 1 attack
  if (combat&&key==' '&&ship&&dist(shipx[1], shipy[1], mouseX, mouseY) < 19
    && dist(shipx[1], shipy[1], shipx[0], shipy[0]) < 495) {
    //crit chance
    chance = random(0, 100);
    if (chance>=90)
      crit=2;
    else if (chance<85)
      crit=1;
    //chance to miss
    if (chance<dist(shipx[1], shipy[1], shipx[0], shipy[0])/20)
      schaden = 0;
    else if (chance>dist(shipx[1], shipy[1], shipx[0], shipy[0])/20)
      schaden = (25-(dist(shipx[1], shipy[1], shipx[0], shipy[0])/20))*crit;
    hp[1] = hp[1]-schaden;
    combat=false;
    ship = !ship;
    steps=20;
  }
 
}
void defeat() {
  //endscreen
  for (int i = 0; i <2; i++) {
    if (hp[i]<=0) {
      image( explosion, shipx[i]-15, shipy[i]-15, 40, 40);
      endScreen=true;
    }
    if (endScreen) {
      fill(0, 180);
      rect(0, 0, 1800, 900);
      if (hp[1]<=0) {

        textSize(50);
        fill(255);
        text("The End. Player 1 wins ", 700, 450);
        textSize(25);
      }
      if (hp[0]<=0) {

        textSize(50);
        fill(255);
        text("The End. Player 2 wins ", 700, 450);
        textSize(25);
      }
    }
  }
}
//for shoing range
void kreis(float x, float y) {
  
  rad -= 1;
  noFill();
  stroke(#FF5A08);
  ellipse(x, y, 494.5049, 500);
  ellipse(mouseX,mouseY, rad, rad);
  line(x, y, mouseX, mouseY);
  noFill();
  stroke(0);
  if(rad<=19)
  rad=40;
 
  
}
