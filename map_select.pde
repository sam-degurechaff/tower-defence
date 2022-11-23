float map, begin;
void mapselect() {
  if (drawmap1.clicked) {
    map=1;
    Nodes=Nodes1;
    mode=PLAY;
    begin=new Node(0, height/2, 1, 0);
  }
  if (drawmap2.clicked) {
    map=2;
  Node  =map2mode;
    mode=PLAY;
    begin=new Node(0, 480, 1, 0);
  }
}
