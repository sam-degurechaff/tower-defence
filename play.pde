//This function draws the PLAY screen


void play() {
  background(green);
  //introAnimation.show();
  drawMap();
  animateThings();
  drawPlayInterface();
  handleButtonClicks();
}
void drawMap() {
  fill(green);
  rect(width/2, height/2, width, height);

  stroke(orange);
  strokeWeight(30);
  line(0, 400, 200, 400);
  line(200, 400, 200, 200);
  line(200, 200, 400, 200);
  line(400, 200, 400, 200);
  line(400, 200, 400, 600);
  line(400, 600, 300, 600);
  line(300, 600, 300, 500);
  line(300, 500, 500, 500);
  line(500, 500, 500, 400);
  line(500, 400, 800, 400);
  strokeWeight(1);
  int i=0;
  while (i<8) {
    nodes[i].show();
    i++;
  }
  nodes[0].show();
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
    if (myMob.hp<=0) {
      mobs.remove(i);
    } else {
      i++;
    }
    i=0;
    while (i<towers.size()) {
      Tower myTower=towers.get (i);
      myTower.act();
      myTower.show();
      i++;
    }
    i=0;
    while (i<bullets.size()) {
      Bullet mybullet=bullets.get (i);
      mybullet.act();
      mybullet.show();
      i++;
    }
  }
}

void handleButtonClicks() {
  if (nextWave.clicked) {
    mobs.add (new Mob(0, 400, 1, 0));
  }
}
