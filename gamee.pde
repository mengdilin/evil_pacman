import ddf.minim.*;
int direction;
final static int wall = 1;
final static int pakuman = 2;
final static int food = 3;
boolean call = true;
boolean gcall = true;
boolean rcall = true;
boolean sound = true;
Board board;
Pakuman Pac;
ghost ghost, ghost1, ghost2, ghost3;
color a;
Timer timer, timer2, timer3,timer4;
Minim minim;
AudioPlayer player;
void setup() {

  minim = new Minim(this);
  player = minim.loadFile("P.mp3");
  //player.loop();
  size(495,495);
  background(0);
  board = new Board();
  board.DrawWall();
  board.DrawPebbles(); 
  Pac = new Pakuman(247.5,247.5);
  
 
  a = color(255,0,0);
  ghost = new ghost(363+16.5, 363+16.5, Pac, a);
  a = color(204, 153, 0);
  ghost1 = new ghost(33+16.5,33+16.5, Pac, a);
  a = color(0, 255, 255);
  ghost2 = new ghost(99+16.5,363+16.5, Pac, a);

  
  UpdateBoard();
  timer = new Timer(300);
  timer2 = new Timer(6000);
  timer3 = new Timer(5000);
  timer4 = new Timer(6000);
}


void draw(){
  background(0);
  board.DrawWall();
  board.DrawPebbles(); 
  if(call) 
  {Pac.draw();}
  if(timer2.isFinished())
    call = true;
 
  if(gcall) {
    ghost.draw();
    ghost1.draw();
    ghost2.draw();
 // ghost3.draw();
    if(timer4.isFinished())
      rcall = true;
  }

  if(timer3.isFinished()) {
    gcall = true;
  }
  if(timer.isFinished())
  {
    ghost.move(board);
    ghost1.move0(board);
    ghost2.move2(board);
   // ghost3.move1(board);
    ghost1.kill();
    ghost2.kill();
    //ghost3.kill();
    ghost.kill();
    timer.start();
  }

  if(ghost1.kill()||ghost.kill()||ghost2.kill())
  {
    noLoop();  
    end();
  } 
  
  

  if(board.win())
  {
    PImage i = loadImage("win.jpg");
    image(i,0,0);
    println("WISHFUL THINKING");
  }
}

  
void end()
{ 
  background(0, 0,0);
  PImage b = loadImage("Pac-Man.jpg");
  image(b,0,0);
}

void UpdateBoard()
{  
  double x = Pac.getx();
  double y = Pac.gety();
}

void keyPressed(){
  if(keyPressed){
    if(key == CODED){
      if((keyCode == LEFT)){
        if(rcall){
          Pac.setcoords(board,-33,0); 
          Pac.setdirection(3);
          Pac.setpx(-33);
          Pac.setpy(0);
        }
        else {
          Pac.setcoords(board,33,0); 
          Pac.setdirection(4);
          Pac.setpx(33);
          Pac.setpy(0);
        }
      
        if (board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==3)
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==4) {
          call=false;
          timer2.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        } 
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==5) {
          gcall=false;
          timer3.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        } 
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==6) {
          rcall=false;
          timer4.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        } 
      }
      
      else 
        if ((keyCode == RIGHT)){ 
        if(rcall){
          Pac.setcoords(board,33,0); 
          Pac.setdirection(4);
          Pac.setpx(33);
          Pac.setpy(0);
        }
        else {
          Pac.setcoords(board,-33,0); 
          Pac.setdirection(3);
          Pac.setpx(-33);
          Pac.setpy(0);
        }
        if (board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==3)
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==4) {
          call=false;
          timer2.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        } 
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==5) {
          gcall=false;
          timer3.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==6) {
          rcall=false;
          timer4.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }   
      }
      else
        if (keyCode == UP){
        if(rcall){
          Pac.setcoords(board,0,-33); 
          Pac.setdirection(1);
          Pac.setpy(-33);
          Pac.setpx(0);
        }
        else {
          Pac.setcoords(board,0,33); 
          Pac.setdirection(2);
          Pac.setpy(33);
          Pac.setpx(0);
        }
        if (board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==3)
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==4) {
          call=false;
          timer2.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==5) {
          gcall=false;
          timer3.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==6) {
          rcall=false;
          timer4.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }    
      }
      else
        if (keyCode==DOWN){
             
        if(rcall){
          Pac.setcoords(board,0,33); 
          Pac.setdirection(2);
          Pac.setpy(33);
          Pac.setpx(0);
        }
        else {
          Pac.setcoords(board,0,-33); 
          Pac.setdirection(1);
          Pac.setpy(-33);
          Pac.setpx(0);
        }
        if (board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==3)
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==4) {
          call=false;
          timer2.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        } 
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==5) {
          gcall=false;
          timer3.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }
        if(board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]==6) {
          rcall=false;
          timer4.start();
          board.board[(int)Pac.convert(Pac.gety())][(int)Pac.convert(Pac.getx())]=0;
        }   
      }
    }
  }
}
