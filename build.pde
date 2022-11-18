//This function draws the BUILD screen
float count;
void build() {
  drawMap();
  animateThings();
  flashingSign();
  drawBuildInterface();
  handleBuildClicks();
}
void flashingSign() {
  count++;
  if (count<20)Text("BUILD MODE", width/2-100, 50, pink, black);
  if (count==40)count=0;
}
void drawBuildInterface() {
  stroke(white);
  fill(black);
  rect(900, height/2, 200, height);
  playMode.show();
  buyGunTower.show();
}
void handleBuildClicks() {
  if (playMode.clicked) {
    mode=PLAY;
  }

  if (buyGunTower.clicked) {
    tower.add(new Tower(0, 0, 0, 30));
  }
}
