//Tower Defense Game
//YOUR NAME GOES HERE
//Programming 12
//https://youtube.com/playlist?list=PL__Tph-7Dyp090HR9Ypp_8FD1C-ik4PTz
// ================ GLOBAL VARIABLES =================

final int INTRO    = 0;
final int PLAY     = 1;
final int BUILD    = 2;
final int GAMEOVER = 3;
final int MAPSELECT=4;
int mode;

//Pallette

color pink=#ff595e;
color orange=#ffca3a;
color green=#8ac926;
color blue=#1982c4;
color purple=#6c4c93;
color white = #ffffff;
color black = #000000;

//towertypes
final int GUN=0;
final int MORTAR=1;
final int SNIPER=2;

//price of a tower
final int[] price={5, 10, 15};

//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start, nextWave, build, playmode, buyguntower, drawmap1, drawmap2;

//Collections of objects
Node[] nodes1;
Node[] map2nodes;
ArrayList<Mob> mobs;
ArrayList<hpMob> hpmobs;
ArrayList<Tower> towers;
ArrayList<Bullet> bullets;

//Images and Gifs
Gif introAnimation;
//Fonts


// ===================== SETUP =========================

void setup() {
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  size(1000, 800);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
}

void initializeModes() {
  //set up the default mode for things
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = INTRO;
}

void initializeVariables() {
  //Load Images & Gifs
  introAnimation=new Gif("gif-start/gif(", ").jpg", 100, 3, width/2, height/2, width, height);//nextwaveicon=loadImage("");
  //Load Fonts

  //Create Collections of Objects
  mobs=new ArrayList<Mob>();
  towers=new ArrayList<Tower>();
  bullets=new ArrayList<Bullet>();
  //tts
  towers.add(new Tower(100, 100, 0, 60));
}

void makeButtons() {
  //INTRO - Start
  drawmap1 = new Button("MAP1", width/2, 3*height/4, 200, 100, white, black);
  drawmap2 = new Button("MAP2", width/2, 3*height/2, 200, 100, white, black);

  //PLAY - Next Wave, To Build Mode
  nextWave=new Button("NEXT", width/2, 3*height/4, 200, 100, green, white);
  //BUILD - To play mode, Buy Sniper, Buy Gun, Buy AoE
  build=new Button("build", 800, 100, 200, 100, green, white);
  playmode=new Button("play", 800, 100, 200, 100, green, white);
  buyguntower=new Button("guntower", 800, 280, 200, 100, green, white);
  //GAMEOVER - Reset
}

void makeNodes() {
  //Plot the nodes on the map
  nodes1=new Node[8];
  nodes1[0]=new Node(200, 400, 0, -1);
  nodes1[1]=new Node(200, 200, 1, 0);
  nodes1[2]=new Node(400, 200, 0, 1);
  nodes1[3]=new Node(400, 600, -1, 0);
  nodes1[4]=new Node(300, 600, 0, -1);
  nodes1[5]=new Node(300, 500, 1, 0);
  nodes1[6]=new Node(500, 500, 0, -1);
  nodes1[7]=new Node(500, 400, 1, 0);

  int unit=800/5;
  map2nodes=new Node[12];
  map2nodes[0]=new Node(unit*1, unit*3, 0, 1);
  map2nodes[1]=new Node(unit*1, unit*4, 1, 0);
  map2nodes[2]=new Node(unit*2, unit*4, 0, - 1);
  map2nodes[3]=new Node(unit*2, unit*2, -1, 0);
  map2nodes[4]=new Node(unit*1, unit*2, 0, -1);
  map2nodes[5]=new Node(unit*1, unit*1, 1, 0);
  map2nodes[6]=new Node(unit*4, unit*1, 0, 1);
  map2nodes[7]=new Node(unit*4, unit*2, -1, 0);
  map2nodes[8]=new Node(unit*3, unit*2, 0, 1);




  nodes1[0]=new Node(200, 400, 0, -1);
}


// ===================== DRAW ===========================

void draw() {
  click();
  if (mode == INTRO) {
    intro();
  } else if (mode == PLAY) {
    play();
  } else if (mode == BUILD) {
    build();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode==MAPSELECT) {
    mapselect();
  }


  textSize(20);
  text(mouseX+","+mouseY, mouseX, mouseY-20);
}
