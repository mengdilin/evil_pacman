class ghost {
  
double x,y;
color gcolor;
double gsize;
int gnum;
Pakuman b;
int direction;

ghost(double x, double y, Pakuman a, color b) {
  this.x = x;
  this.y = y;
  gsize = 33/2;
  gcolor = b;
  this.b = a;
}

void setcolor(color a)
{
 gcolor = a; 
}

void draw() {
  fill(gcolor);
  ellipse((float)x,(float)y,(float)gsize,(float)gsize);
  stroke(0,0,0);
  noFill();
  smooth();
  bezier((float)x-5,(float)y+5,(float)x-2,(float)y,(float)x+1,(float)y,(float)x+5,(float)y+5);
  fill(0, 0, 0);
  ellipse((float)x-3.3, (float)y-3.3,(float) 1.65, (float)1.65);
  ellipse((float)x+3.3, (float)y-3.3, (float)1.65,(float) 1.65);
}

boolean validmove(Board a, double x, double y)
{
  double b = this.convert(x);
  double c = this.convert(y);

  if(a.board[(int)c][(int)b]== 1)
    return false;
  return true;

}

boolean atcorner(Board a)
{
  double b = this.convert(this.x);
  double c = this.convert(this.y);
  if((a.board[(int)c][(int)b+1]!=1)&&(a.board[(int)c+1][(int)b+1]!=1))
    return true;

  if((a.board[(int)c-1][(int)b]!=1)&&(a.board[(int)c-1][(int)b+1]!=1))
    return true;

  if((a.board[(int)c+1][(int)b]!=1)&&(a.board[(int)c+1][(int)b-1]!=1))
    return true;

  if((a.board[(int)c-1][(int)b]!=1)&&(a.board[(int)c-1][(int)b-1]!=1))
    return true;
  return false;
}


int getmove(Board a)
{
 double b = this.convert(this.x);
 double c = this.convert(this.y);
 
 int d = int(random(4));

 if(atcorner(a))
 {
   if(direction!=2&&(a.board[(int)c-1][(int)b]!=1))
   {
     direction = 1;
     return 1;
   }
   if(direction!=1&&(a.board[(int)c+1][(int)b]!=1))
   {
     direction = 2;
     return 2;
   }

   if(direction!=4&&(a.board[(int)c][(int)b-1]!=1))
   {
     direction = 3;
     return 3;
   }

   if(direction!=3&&(a.board[(int)c][(int)b+1]!=1))
   {
     direction = 4;
     return 4;
   }
 }


 if(d==0)
 {
   if(a.board[(int)c-1][(int)b]!=1)
   {
     direction = 1;
     return 1;
   }


   if(a.board[(int)c][(int)b-1]!=1)
   {
     direction = 3;
     return 3;
   }

   if(a.board[(int)c][(int)b+1]!=1)
   {
     direction = 4;
     return 4;
   }

   if(a.board[(int)c+1][(int)b]!=1)
   {
     direction = 2;
     return 2;
   }
 }
 
 if(d==1)
 {
   if(a.board[(int)c][(int)b-1]!=1)
   {
     direction = 3;
     return 3;
   }
   if(a.board[(int)c+1][(int)b]!=1)
   {
     direction = 2;
     return 2;
   }

   if(a.board[(int)c][(int)b+1]!=1)
   {
     direction = 4;
     return 4;
   }

   if(a.board[(int)c-1][(int)b]!=1)
   {
     direction = 1;
     return 1;
   } 
 }
 
 if(d==2)
 {
   if(a.board[(int)c+1][(int)b]!=1)
   {
     direction = 2;
     return 2;
   }

   if(a.board[(int)c+1][(int)b+1]!=1)
   {
     direction = 4;
     return 4;
   }

   if(a.board[(int)c-1][(int)b]!=1)
   {
     direction = 1;
     return 1;
   }

   if(a.board[(int)c][(int)b-1]!=1)
   {
     direction = 3;
     return 3;
   }
 }
 
 if(d==3)
 {
   if(a.board[(int)c][(int)b+1]!=1)
   {
     direction = 4;
     return 4;
   }

   if(a.board[(int)c+1][(int)b]!=1)
   {
     direction = 2;
     return 2;
   }

   if(a.board[(int)c][(int)b-1]!=1)
   {
     direction = 3;
     return 3;
   }


   if(a.board[(int)c-1][(int)b]!=1)
   {
     direction = 1;
     return 1;
   } 
 }

 return 0;
}


void move(Board a)
{
  if(this.x == 231+16.5 && this.y == 165+16.5) {
    y-=33;
  }     
  else{
    if(this.x==231+16.5 && this.y==132+16.5) {
      int d = int(random(3));
      if(d==0)
        x-=33;
      else
        x+=33;
    }
    else
    {
      if(b.gety()>y){
        if(validmove(a,x,y+33))
          y+=33;
        else{
          if (validmove(a,x+33,y))
          {x+=33;}
          else {
            if(validmove(a,x,y-33))
              y-=33;
            else{
              if (validmove(a,x-33,y))
              {x-=33;}
            }
          }
        }
      }
      else{
        if(b.getx()<x){
          if(validmove(a,x-33,y))
            x-=33;
          else{
            if (validmove(a,x,y+33))
            {y+=33;}
            else{
              if (validmove(a,x,y-33))
              {y-=33;}
            }
          }
        }
        else{
          if(b.gety()<y){
            if(validmove(a,x,y-33))
              y-=33;
            else {
              if (validmove(a,x-33,y))
              {x-=33;}
              else{
                if (validmove(a,x+33,y))
                {x+=33;}
              }
            }
          }
          else{
            if(b.getx()>x){
              if(validmove(a,x+33,y))
                x+=33;
              else{
                if (validmove(a,x,y+33))
                {y+=33;}
                else {
                  if (validmove(a,x,y-33))
                  {y-=33;}
                }
              }
            }
          }
        }
      }
    }
  }
}
             
void move0(Board a)
{
   if(this.x == 231+16.5 && this.y == 165+16.5) {
    y-=33;
  }           
   else{
     if(this.x==231+16.5 && this.y==132+16.5) {
       int d = int(random(3));
       if(d==0)
         x-=33;
       else
         x+=33;
     }
     else{
       if(getmove(a)==1)
         y-=33;
       else
       {
         if(getmove(a)==2)
           y+=33;
         else{
           if(getmove(a)==3)
             x-=33;
           else{
             if(getmove(a)==4)
               x+=33;
           }
         }
       }
     }    
   }
}
    
  
void move2(Board a)
{
  if(this.x == 231+16.5 && this.y == 165+16.5) {
    y-=33;
  }
  else{
    if(this.x==231+16.5 && this.y==132+16.5) {
      int d = int(random(3));
      if(d==0)
        x-=33;
      else
        x+=33;
    }
    
    else{
      if(b.getx()<x){
        if(validmove(a,x-33,y))
          x-=33;
        else{
          if (validmove(a,x,y+33))
          {y+=33;}
          else{
            if (validmove(a,x,y-33))
            {y-=33;}
          }
        }
      }
      
      else
      {
        if(b.gety()>y){
          if(validmove(a,x,y+33))
            y+=33;
          else{
            if (validmove(a,x+33,y))
            {x+=33;}
            else {
              if(validmove(a,x,y-33))
                y-=33;
              else{
                if (validmove(a,x-33,y))
                {x-=33;}
              }
            }
          }
        }         
        else{
          if(b.getx()>x){
            if(validmove(a,x+33,y))
              x+=33;
            else{
              if (validmove(a,x,y+33))
              {y+=33;}
              else {
                if (validmove(a,x,y-33))
                {y-=33;}
              }
            }
          }
          else{
            if(b.gety()<y){
              if(validmove(a,x,y-33))
                y-=33;
              else {
                if (validmove(a,x-33,y))
                {x-=33;}
                else{
                  if (validmove(a,x+33,y))
                  {x+=33;}
                }
              }
            }
          }
        }
      }
    }
  } 
}

void move1(Board a)
{
  if(this.x == 231+16.5 && this.y == 165+16.5) {
    y-=33;
  } 
  else{
    if(this.x==231+16.5 && this.y==132+16.5) {
      int d = int(random(3));
      if(d==0)
        x-=33;
      else
        x+=33;
    }                                 
    else{
      if(b.getx()>x){
        if(validmove(a,x+33,y))
          x+=33;
        else{
          if (validmove(a,x,y+33))
          {y+=33;}
          else {
            if (validmove(a,x,y-33))
            {y-=33;}
          }
        }
      }                  
      else
      {
        if(b.gety()>y){
          if(validmove(a,x,y+33))
            y+=33;
          else{
            if (validmove(a,x+33,y))
            {x+=33;}
            else {
              if(validmove(a,x,y-33))
                y-=33;
              else{
                if (validmove(a,x-33,y))
                {x-=33;}
              }
            }
          }
        }
        else{
          if(b.getx()<x){
            if(validmove(a,x-33,y))
              x-=33;
            else{
              if (validmove(a,x,y+33))
              {y+=33;}
              else{
                if (validmove(a,x,y-33))
                {y-=33;}
              }
            }
          }
          else{
            if(b.gety()<y){
              if(validmove(a,x,y-33))
                y-=33;
              else {
                if (validmove(a,x-33,y))
                {x-=33;}
                else{
                  if (validmove(a,x+33,y))
                  {x+=33;}
                }
              }
            }
          }
        }
      }
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

void die()
{
  if(b.getx()==x&&b.gety()==y)
    this.setcolor(color(0,0,0));
}

boolean kill()
{
  if(b.getx()==x&&b.gety()==y)
  {
    println("TRY AGAIN...BUT YOU WON'T SUCCEED >:P");
    return true;
  }
  return false;
}



double getx()
{
  return x;
}

double gety()
{
 return y; 
}
}
