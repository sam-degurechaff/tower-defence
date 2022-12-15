float map;
Node begin, beginx, beginy;
void mapselect() {
  drawmap1.show();
  drawmap2.show();
  if (drawmap1.clicked) {
    map=1;
    nodes=nodes1;
    mode=PLAY;
    begin=new Node(0, height/2, 1, 0);
  }
  if (drawmap2.clicked) {
    map=2;
    nodes  =map2nodes;
    mode=PLAY;
    begin=new Node(0, 480, 1, 0);
  }
}
