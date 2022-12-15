class hpmob extends Mob {

  hpmob(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);

    hp=hpmax;
    hpmax=20;
    value=5;
    fillcolor=orange;
    speed=.5;
  }
}
