//Some classes place AoE rings on the map. The AoE ring
//hurts all mobs in the ring. The ring only lasts for a
//short period of time.

class AoE_Ring extends bullet {
  AoEring(float _x, float _y, float _vx, float _vy, int s) {
    super(_x, _y, _vx, _vy);
    s=80;
    x=_x;
    y=_y;
    tint(255, 127);
  }

  void show() {
    circle(x, y, s);
  }
}
