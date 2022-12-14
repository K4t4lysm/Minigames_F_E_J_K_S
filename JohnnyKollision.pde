void crash() {
  //collision with islands
  //fill array
  for (int i = 0; i<lx.length; i++) {
    if (i<10) {
      lx1[i]=lx[i]+speedx;
      ly1[i]=ly[i]+speedyj;
  
    }
    if (i==10) {
      lx1[i]=lx[i]+(speedx*3);
      ly1[i]=ly[i]+(speedyj*3);
  
    }
    if (i>10&&i<14) {
      lx1[i]=lx[i]+(speedx*2);
      ly1[i]=ly[i]+(speedyj*3);
     
    }
    if (i>13&&i<17) {
      lx1[i]=lx[i]+(speedyj*3);
      ly1[i]=ly[i]+(speedyj*1);
    
    }
    if (i==17) {
      lx1[i]=lx[i]+(speedyj*8);
      ly1[i]=ly[i]+(speedyj*4);
    
    }
    if (i>17&&i<21) {
      lx1[i]=lx[i]+(speedx*2);
      ly1[i]=ly[i]+(speedyj*2);
    
    }
    if (i==21) {
      lx1[i]=lx[i]+(speedx*3);
      ly1[i]=ly[i]+(speedyj*5);
     
    }
    if (i==22) {
      lx1[i]=lx[i]+(speedx*1);
      ly1[i]=ly[i]+(speedyj*3);
     
    }
    if (i==23) {
      lx1[i]=lx[i]+(speedx*6);
      ly1[i]=ly[i]+(speedyj*3);
      
    }
    if (i==24) {
      lx1[i]=lx[i]+(speedx*4);
      ly1[i]=ly[i]+(speedyj*2);
      
    }
    if (i==25) {
      lx1[i]=lx[i]+(speedx*21);
      ly1[i]=ly[i]+(speedyj*8);
      
    }
    if (i==26) {
      lx1[i]=lx[i]+(speedx*6);
      ly1[i]=ly[i]+(speedyj*5);
      
    }
    if (i==27) {
      lx1[i]=lx[i]+(speedx*9);
      ly1[i]=ly[i]+(speedyj*5);
     
    }
    if (i>27&&i<30) {
      lx1[i]=lx[i]+(speedx*7);
      ly1[i]=ly[i]+(speedyj*2);
     
    }
    
    if (i>29&&i<=31) {
      lx1[i]=lx[i]+(speedx*4);
      ly1[i]=ly[i]+(speedyj*4);
      
    }
     if (i>31&&i<=33) {
      lx1[i]=lx[i]+(speedx*2);
      ly1[i]=ly[i]+(speedyj*5);
     
    }
     if (i==34) {
      lx1[i]=lx[i]+(speedx*5);
      ly1[i]=ly[i]+(speedyj*1);
      
    }
    
  }
    //crash
    for (int i = 0; i<lx.length; i++) {
      
    if (lx[i]<shipx[0]&&ly[i]<shipy[0]&&lx1[i]>shipx[0]&&ly1[i]>shipy[0]) {
      image( explosion, shipx[0]-15, shipy[0]-15, 60, 60);
      endScreen=true;
      fill(255);
      textSize(50);
      text("The End. Player 1 crashed ", 700, 450);
      textSize(25);
    }
    if (lx[i]<shipx[1]&&ly[i]<shipy[1]&&lx1[i]>shipx[1]&&ly1[i]>shipy[1]) {
      image( explosion, shipx[1]-15, shipy[1]-15, 60, 60);
      endScreen=true;
      fill(255);
      textSize(50);
      text("The End. Player 2 crashed ", 700, 450);
      textSize(25);
    }
  }
}
