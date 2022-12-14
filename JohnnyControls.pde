void JohnnykeyPressed() {

  //movement of the ships
  if (ship&&steps>0) {
    if (keyCode==UP) {
      shipy[0] -= speedyj;
      steps--;
    }
    if (keyCode==DOWN) {
      shipy[0] += speedyj;
      steps--;
    }
    if (keyCode==LEFT) {
      shipx[0] -= speedx;
      steps--;
    }
    if (keyCode==RIGHT) {
      shipx[0] += speedx;
      steps--;
    }
  } else if (ship==false&&steps>0) {
    if (keyCode==UP) {
      shipy[1] -= speedyj;
      steps--;
    }
    if (keyCode==DOWN) {
      shipy[1] += speedyj;
      steps--;
    }
    if (keyCode==LEFT) {
      shipx[1] -= speedx;
      steps--;
    }
    if (keyCode==RIGHT) {
      shipx[1] += speedx;
      steps--;
    }
  }
}
