//Tower Defense Game
//YOUR NAME GOES HERE
//Programming 12
//https://youtube.com/playlist?list=PL__Tph-7Dyp090HR9Ypp_8FD1C-ik4PTz
// ================ GLOBAL VARIABLES =================

final int INTRO    = 0;
final int PLAY     = 1;
final int BUILD    = 2;
final int GAMEOVER = 3;
int mode;

//Pallette

color pink=#ff595e;
color orange=#ffca3a;
color green=#8ac926;
color blue=#1982c4;
color purple=#6c4c93;
color white = #ffffff;
color black = #000000;

//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start, nextWave;

//Collections of objects
Node[] nodes;
ArrayList<Mob> mobs;
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
  start = new Button("START", width/2, 3*height/4, 200, 100, white, black);

  //PLAY - Next Wave, To Build Mode
  nextWave=new Button("START", width/2, 3*height/4, 200, 100, green, white);
  //BUILD - To play mode, Buy Sniper, Buy Gun, Buy AoE

  //GAMEOVER - Reset
}

void makeNodes() {
  //Plot the nodes on the map
  nodes=new Node[8];

  nodes[0]=new Node(200, 400, 0, -1);
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
  }

  textSize(20);
  text(mouseX+","+mouseY, mouseX, mouseY-20);
}
