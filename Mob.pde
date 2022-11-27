//Mobs are the monsters that the towers defend against.
//Mobs spawn at the start and then move across the map,
//changing direction when they hit a node. If they get
//to the end of the map, they deal damage to the player.
//Once the player has no more health, it's game over!

class Mob {
  float x, y, vx, vy, d, hp,hpmax,speed;
  color fillcolor;
  int value;
  Mob(float _x, float _y, float _vx, float _vy) {
    x=_x;
    y=_y;
    vx=_vx;
    vy=_vy;
    d=15;
    hp=1;
  }
  void show() {
    fill(purple);
    strokeWeight(3);
    circle(x, y, d);
  }
  void act() {
    x=x+vx*speed;
    y=y+vy*speed;
    int i=0;
    while (i<nodes1.length) {
      if (dist(nodes1[i].x, nodes1[i].y, x, y)<4) {
        vx=nodes1[i].dx;
        vy=nodes1[i].dy;
      }
      i++;
    }
    while (i<nodes1.length) {
      if (dist(nodes1[i].x, nodes1[i].y, x, y)<4) {
        vx=map2nodes[i].dx;
        vy=map2nodes[i].dy;
      }
      i++;
    }
    i=0;
    while (i<bullets.size()) {
      Bullet myBullet=bullets.get(i);
      if (dist(myBullet.x, myBullet.y, x, y) <d/2+myBullet.d/2) {
        hp=hp-1;
      }
      i++;
    }
  }
}
