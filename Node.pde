//Nodes are invisible objects that we place on the map
//to direct the flow of mobs. When a mob collides with
//a node object, it will change direction according to
//the node's instructions.

class Node {
  float x, y, vx,vy,dx, dy;
  Node(float _x, float _y, float _dx, float _dy) {
    x=_x;
    y=_y;
    dx=_dx;
    dy=_dy;
  }
  void show() {
    fill(pink);
    circle(x, y, 30);
    circle(x, y, 30);
    line(x, y, x+dx*50, y+dy*50);
  }
  void act() {
    x=x+vx;
    y=y+vy;
    int i=0;
    while (i<nodes.length) {
      if (dist(nodes[i].x, nodes[i].y, x, y)<4) {
        vx=nodes[i].dx;
        vy=nodes[i].dy;
      }
      i++;
    }
  }
}
