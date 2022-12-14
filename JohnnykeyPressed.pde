void johnnyMouse() {
  //buttons
  //End Turn
  if (steps<= 14 && mousePressed &&
    buttonx+120 > mouseX && mouseX > buttonx
    && buttony < mouseY && mouseY < buttony+40) {

    ship = !ship;
    steps=10;
    combat=false;
  }
  //Combat
  if (mousePressed &&
    buttonx+120 > mouseX && mouseX > buttonx
    && buttony+40 < mouseY && mouseY < buttony+80) {
    combat=true;
  }
}
