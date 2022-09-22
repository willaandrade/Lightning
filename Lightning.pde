void setup()
{
  size(300,300);
  noLoop();

}
  int nx = 150;
  int ny = 0;
  int nnx;
  int nny;
void draw()
{
background(0,0,50);

stroke(255,255,b(),o());

while (ny<300){
lightning(nx,ny); 
if ((ny>120)&&(ny<150)){
  branchOff();
}
}
drawClouds(50,20);
drawClouds(25,40);
}

void drawClouds(int fill,int y){
noStroke();
  fill(fill);
  int wide;
  //int high;
  for (int x = 0; x<330;x+=20){
    wide = (int)(Math.random()*30)+30;
   // high = (int)(Math.random()*60)+20;
    ellipse(x,y,wide,wide);
  }
  
}

void branchOff(){
  nnx = nx;
  nny = ny;
  while (nny<300){
lightning2(nnx,nny); 
}
}




public int b(){
  int blue = (int)(Math.random()*131);
  return blue;
}

public int o(){
  int opacity = (int)(Math.random()*150)+100;
  return opacity;
}

void lightning(int advanceX,int advanceY){
int startX = advanceX;
int startY = advanceY;
if (Math.random()<0.5)
 advanceX = startX + ((int)(Math.random()*10))+5;
else
advanceX = startX - ((int)(Math.random()*10))-5;

advanceY = startY +((int)(Math.random()*10))+5;
line(startX,startY,advanceX,advanceY); 
nx = advanceX;
ny = advanceY;
}

void lightning2(int advanceX,int advanceY){
int startX = advanceX;
int startY = advanceY;
if (Math.random()<0.5)
 advanceX = startX + ((int)(Math.random()*10))+5;
else
advanceX = startX - ((int)(Math.random()*10))-5;

advanceY = startY +((int)(Math.random()*10))+5;
line(startX,startY,advanceX,advanceY); 
nnx = advanceX;
nny = advanceY;
}



void mousePressed()
{
redraw(); 
nx = 150;
ny = 0;
}

