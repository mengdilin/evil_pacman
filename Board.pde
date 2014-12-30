class Board{
final static int wall = 1;
final static int pakuman = 2;
final static int pebble = 3;
final static int invs = 4;
final static int ginvs = 5;
final static int rev = 6;
ArrayList<PImage> images = new ArrayList<PImage>();
int[][] board ={{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,},

                {1,3,3,3,3,3,4,3,3,3,3,3,3,3,1},
                
                {1,3,1,1,1,1,3,1,3,1,1,1,1,3,1},
                
                {1,3,3,3,3,3,3,1,3,3,3,5,3,3,1},
                
                {1,3,1,3,1,3,3,3,3,3,1,3,1,3,1},
                
                {1,3,3,3,3,3,1,3,1,3,3,3,3,3,1},
                
                {1,5,1,3,1,3,1,1,1,3,1,3,1,3,1},
                
                {1,3,3,3,3,3,3,2,3,3,3,3,3,3,1},
                
                {1,3,1,1,1,1,1,3,1,1,1,1,1,3,1},
                
                {1,3,3,3,3,3,3,3,3,3,3,3,3,3,1},
                
                {1,3,1,3,1,1,3,1,6,1,1,3,1,3,1},
                
                {1,3,3,6,3,3,3,1,3,3,3,3,3,3,1},
                
                {1,3,1,1,1,1,3,1,3,1,1,1,1,3,1},
                
                {1,3,3,3,3,4,3,3,3,3,3,3,5,3,1},
                
                {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,}};
  
  Board()
  {
    for(int i=0; i<120; i++)
    {
      PImage b = loadImage("wall.jpg");
      images.add(b);
    }
  }

void DrawWall() {  
  //boundaries
  int h=0;
  for (int i=0; i<=495; i=i+33)
  {
   image(images.get(h),0,i);
   h++; 
  }
  
  for (int i=0; i<=495; i=i+33)
  {
   image(images.get(h),462,i);
   h++; 
  }
  
  for (int i=0; i<=495; i=i+33)
  {
   image(images.get(h),i,0);
   h++; 
  }
  
  for (int i=0; i<=495; i=i+33)
  {
   image(images.get(h),i,462);
   h++; 
  }
  
  // middle parts
  for (int i=66; i<198; i=i+33)
  {
   image(images.get(h),i,66);
   h++; 
  }
  
  for (int i=297; i<429; i=i+33)
  {
   image(images.get(h),i,66);
   h++; 
  }
  
  for (int i=66; i<198; i=i+33)
  {
   image(images.get(h),i,396);
   h++; 
  }
  
  for (int i=297; i<429; i=i+33)
  {
   image(images.get(h),i,396);
   h++; 
  }
  
  for (int i=66; i<=198; i=i+33)
  {
   image(images.get(h),i,264);
   h++; 
  }
  
  for (int i=264; i<429; i=i+33)
  {
   image(images.get(h),i,264);
   h++; 
  }
  
   for (int i=66; i<=99; i=i+33)
  {
   image(images.get(h),231,i);
   h++; 
  }
  
  for (int i=198; i<297; i=i+33)
  {
   image(images.get(h),i,198);
   h++; 
  }
  
   image(images.get(h),66,132);
   h++; 
  
   image(images.get(h),66,198);
   h++; 
   
   image(images.get(h),132,132);
   h++; 
  
     image(images.get(h),132,198);
   h++; 
   
   image(images.get(h),198,165);
   h++; 
   
   image(images.get(h),264,165);
   h++; 
   
   image(images.get(h),330,132);
   h++; 
   
   image(images.get(h),396,132);
   h++; 
   
   image(images.get(h),330,198);
   h++; 
   
   image(images.get(h),396,198);
   h++; 
   

   image(images.get(h),132,330);
   h++; 
   
   image(images.get(h),165,330);
   h++; 
   
   image(images.get(h),132,66);
   h++; 
   
  image(images.get(h),66,330);
   h++; 
   
   image(images.get(h),231,330);
   h++; 
   
   image(images.get(h),231,363);
   h++; 
   
   image(images.get(h),231,396);
   h++; 
   
   image(images.get(h),297,330);
   h++; 
   
   image(images.get(h),330,330);
   h++; 
   
   image(images.get(h),396,330);
   h++; 
   
   
   
}



void DrawPebbles()
{
  fill(255);
  for(int i=0; i<board.length; i++)
  {
    for(int j=0; j<board[0].length; j++)
    {
      if (board[i][j]==pebble)
      {
      ellipse((float)revert(j),(float)revert(i),8.25,8.25);
      }
    }
  }
  
  fill(255,255,0);
  for(int i=0; i<board.length; i++)
  {
    for(int j=0; j<board[0].length; j++)
    {
      if (board[i][j]==invs)
      {
      triangle((float)revert(j)-10,(float)revert(i)+10,(float)revert(j),(float)revert(i)-10,(float)revert(j)+10,(float)revert(i)+10);
      }
    }
  }

  fill(0,255,0);
  for(int i=0; i<board.length; i++)
  {
    for(int j=0; j<board[0].length; j++)
    {
      if (board[i][j]==ginvs)
      {
      rect((float)revert(j)-10,(float)revert(i)-10,20,20);
      }
    } 
}
  fill(0,0,255);
  for(int i=0; i<board.length; i++)
  {
    for(int j=0; j<board[0].length; j++)
    {
      if (board[i][j]==rev)
      {
      ellipse((float)revert(j),(float)revert(i),13,13);
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
  
boolean win()
{
  int z = 0;
  for(int i=0;i<board.length;i++)
  {
    for(int j=0; j<board[0].length;j++)
    {
      if( board[i][j]==3)
        z++;
    } 
  }
  if(z==0)
  {
    return true; 
  }
  return false;
}  
  
  
}
