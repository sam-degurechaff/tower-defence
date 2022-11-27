//Some classes place AoE rings on the map. The AoE ring
//hurts all mobs in the ring. The ring only lasts for a
//short period of time.

class AoE_Ring extends tower{
AoEring(float _x,float _y,int s);
super(_x,_y);
s=80;
tint(255, 127);



}
