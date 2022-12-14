void JohnnyDraw() {
  //background & objects
  image(paper1, 0, 0, 1800, 900);
  fill(#FF0818);
  ellipseMode(CENTER);
  ellipse(shipx[0], shipy[0], 19, 19);
  fill(#002CFF);
  ellipse(shipx[1], shipy[1], 19, 19);


  //nubers to count the bars
  for ( int i =0; i<45; i++) {
    text(i+1, 5, (i+1)*20-5);
  }
  for ( int i =0; i<91; i++) {
    text(i+1, (i+1)*19.7802-10, 10);
  }
 textSize(15);
 stroke(0);
 text("Fire : Space",40,840);
  text("Steuerung : Pfeiltasten",40,860);

  //color of the ship
  if (ship) {
    farbe = #FF0000;
  } else if (ship==false)
    farbe = #002CFF;
  //buttons
  fill(farbe);
  rect(buttonx, buttony, 118.6812, 40);
  rect(buttonx, buttony+40, 118.6812, 40);

  fill(0);
  textSize(25);
  textAlign(CORNER);
  text("End Turn", buttonx+15, buttony+25);
  text("Combat", buttonx+15, buttony+65);
  text("Steps left: "+ steps, buttonx+15, buttony+105);
  textSize(10);

  combat();

  //healthbar
  for (int i = 0; i <2; i++) {
    if (hp[i]>=75)
      hpFarbe[i] = clr[0];
    if (hp[i]<=75&&hp[i]>50)
      hpFarbe[i] = clr[1];
    if (hp[i]<=50&&hp[i]>25)
      hpFarbe[i] = clr[2];
    if (hp[i]<=25)
      hpFarbe[i] = clr[3];
  }
  for (int i = 0; i <2; i++) {
    rectMode(CORNER);
    fill(0);
    text(hp[i], shipx[i]- 50, shipy[i]-40);
    noFill();
    strokeWeight(1);
    rect(shipx[i]- 50, shipy[i]-40, 100, 10);
    fill(hpFarbe[i]);
    rect(shipx[i]- 50, shipy[i]-40, hp[i], 10);
    noFill();
  }

  //defeat screen
  defeat();
  crash();
}
