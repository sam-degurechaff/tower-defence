//This function draws the PLAY screen


void play() {
  background(green);
  introAnimation.show();
  drawMap();
  animateThings();
  drawPlayInterface();
  handleButtonClicks();
}
void drawMap() {
  fill(green);
  rect(width/2, height/2, width, height);
}

void drawPlayInterface() {
  stroke(white);
  fill(black);
  rect(900, height/2, 200, height);
  fill(white);
  textSize(20);
  text("Next Wave", 900, 30);
  nextWave.show();
}
void animateThings() {
  int i=0;
  while (i<mobs.size()) {
    Mob myMob=mobs.get(i);
    myMob.act();
    myMob.show();
    i++;
  }
}
voide hacdleButtonClicks(){if(nextWave.clicked){mob.add(0,400,1,0))}
