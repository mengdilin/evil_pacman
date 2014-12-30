
class Pakuman
{
double x,y;
color pcolor;
double psize; 
int direction;
double px;
double py;

Pakuman(double x, double y)
{
  this.x = x;
  this.y = y;
  psize = 33/2;
  pcolor = color(255, 204, 0);
  px = 0;
  py = 0;
}

void draw()
{
  fill(pcolor);
  if(direction==0)//origin
  ellipse((float)x,(float)y,(float)psize,(float)psize); 
  
  if(direction==1)//up
  arc((float)x,(float)y,(float)psize,(float)psize,TWO_PI-PI/2,TWO_PI+PI+0.8);
  
  if(direction==2)//down
  arc((float)x,(float)y,(float)psize,(float)psize,TWO_PI-3*(PI/2),TWO_PI+0.8);
  
  if(direction==3)//left
  arc((float)x,(float)y,(float)psize,(float)psize,TWO_PI-PI,TWO_PI+PI/2+0.8);
  
  if(direction==4)//right
  arc((float)x,(float)y,(float)psize,(float)psize,TWO_PI+0.8,TWO_PI+TWO_PI);
  
}

boolean validmove(Board a, double x, double y)
{
  x = this.convert(this.x+x);
  y = this.convert(this.y+y);

  if(a.board[(int)y][(int)x]== 1)
    return false;
  return true;

}

void setcoords(Board a, double x, double y)
{
  if (this.validmove(a,x,y))
  {
    if(this.x+x < 495-33 && this.y+y < 495-33 && this.x+x > 33 && this.y+y > 33)
    {
      this.x = this.x+x;
      this.y = this.y+y;
    }
  }
}


double convert(double x)   //big grid to small grid
{
  double a = (x-16.5)/33;
  return a;
}

double revert(double x)   //small grid to big grid
{
  double a = x*33 + 16.5;
  return a;
}

void setdirection(int a)
{
  this.direction = a;
}

double gety()
{
  return this.y;
}

double getx()
{
  return this.x;
}

int getdirection()
{
  return this.direction;
}

void setpx(double a)
{
  px = a;
}

double getpx()
{
 return px;
}
  
void setpy(double a)
{
  py = a;
}

double getpy()
{
 return py;
}
  
  

  
  
  
  
}

