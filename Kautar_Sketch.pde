boolean alive = true;

//Varaiblen für die Sterne
int[] xstar = new int[100];
int[] ystar = new int[100];

//growing Smiley if losing
float growing = 1;

//Variablen für Spielfigur und ihrer Bewegungen
int player = 30; // für kreis Figur
int forward = 5;//horizontal speed
int floor = 600; // boden grenze‚

int jump = 10;

//Radius für blöcke
int blockRadius = 150;

//Posittion für Spieler
float xPosition;
float yPosition;

//Geschwindigkeit für Spieler
float xSpeed = 0;
float ySpeed = 0;

//Variablen für Geschwindigkeitund Beschleunigung des Spielers
float resistens = 0.98; // für das abbremsen
float yBeschleunigung = 0.4;


//y Koordinate der block ellipse
int flyY = 630;


//Variablen für Hindernisse
float flyX ;//fly Position X
float flyX1;
float flyX2;

//speed für flyX
float speedy = 0.1;
float speedy1 = 0.1;
float speedy2 = 0.1;

//Counter für HighScore
int counter = 0;






void KautarDraw() {

  if (alive == true) {

    hintergrund();
    stars();
    flyX = flyX- speedy; // speed für block
    flyX1 = flyX1- speedy1;
    flyX2 = flyX2- speedy2;
    steuerung();
    move();
    walls();
    display();
    block();
    gegner();
    collision();
    highScore();
    if (frameCount %60== 0) {
      counter++;
    }

    speedy+=0.003;// geschwindigkeit für block flyX
    speedy1+= 0.003;
    speedy2+=0.003;
  } else if (alive == false) {

    {
      background(255);
      lose();
      smiley();
    }
  }
}









//Controlling player
void steuerung () {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      xSpeed = forward;
    }
    if (key == ' ') {
      ySpeed = - jump;
    }
    if (keyCode == LEFT) {
      xSpeed = - forward;
    }
    if (keyCode == UP) {
      ySpeed = - jump;
    }
    if (keyCode == DOWN) {
      ySpeed +=  jump/2; // for speed up
    }
  }
}
//Kugel Controll
void move() {
  xPosition += xSpeed;
  yPosition += ySpeed;
  ySpeed += yBeschleunigung; //gravity
  xSpeed *= resistens ;
}

//Obere und Untere Wand, damit Kugel nicht ins leere fliegt
void walls() {
  if (yPosition <= player ) { //obere Grenze für Ball
    yPosition = player -15 ; // Grenze -15
  }
  if (yPosition >= floor ) { //untere  Grenze für Ball (Bodegrenze)
    yPosition  = floor ;
  }
}

void display() {
  //Figur//Player
  fill(255);
  ellipse(xPosition, yPosition, player, player);
  //Boden
  fill(200);
  rect(0, 615, 2000, 800);
}
