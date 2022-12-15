//This function draws the BUILD screen
float count;
String text;
int i;

void build() {
  drawMap1();
  drawmap2();
  animateThings();
  flashingSign();
  drawBuildInterface();
  handleBuildClicks();
}
void flashingSign() {
  count++;
  if (count<20)text("BUILD MODE", width/2-100, 50, pink, black);
  if (count==40)count=0;
}
void drawBuildInterface() {
  stroke(white);
  fill(black);
  rect(900, height/2, 200, height);
  playmode.show();
  buyguntower.show();
  int i=0;
  while (i<8) {
    nodes1[i].show();
    i++;
  }
  while (i<8) {
    map2nodes[i].show();
    i++;
  }
}
void handleBuildClicks() {
  if (playmode.clicked) {
    mode=PLAY;
  }

  if (buyguntower.clicked) {
    towers.add(new Tower(0, 0, 0, 30,0));
  }
}
