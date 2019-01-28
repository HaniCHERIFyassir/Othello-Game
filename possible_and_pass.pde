ArrayList <possible> tab(int test[][] , int tr2 )
{
  ArrayList <possible> t=new ArrayList <possible> ();
  int tr1,u,n,v;
  boolean exist=false;
  if(tr2==3 || tr2==1)
  tr1=tr2+1;
  else
  tr1=tr2-1;
  
    for (int x=0; x<8; x++)
    for (int y=0; y<8; y++)
    {    possible d= new possible(-1,-1);
      if (test[x][y]!=1 && test[x][y]!=2)
      {
        
        //println("cordonner de text = "+x+"   "+y);
       /* qq++;
        qx=x;
        qy=y;*/
        if (x+1<8 && test[x+1][y]==tr1) //  --> si il y a un blanc de couté droit 
        {

          n=1;
          u=x+1;
          while (u+n<8 && test[n+u][y]==tr1 )
            n++;
          if (u+n<8 &&  test[n+u][y]==tr2)
          {
           
           exist= true;
          }
        }

        if (x-1>0 && test[x-1][y]==tr1)//  <-- si il y a un blanc dans le couté gauche 
        {
          n=1;
          u=x-1;
          while (u-n>0 && test[u-n][y]==tr1 )
            n++;
          if (u-n>=0 && test[u-n][y]==tr2)
          {
          exist= true;
          }
        }

        if (y>0 && test[x][y-1]==tr1)
        {  
          //    /\
          //   /__\    si il y a un blanc au desus 
          //    ||
          n=1;
          u=y-1;
          while (u-n>0 && test[x][u-n]==tr1 )
            n++;

          if (u-n>=0 && test[x][u-n]==tr2)
          {
            exist= true;
          }
        }

        if (y+1<8 && test[x][y+1]==tr1) 

        {
          //      ||
          //     \  /   si il y a un blanc au desous 
          //      \/

          n=1;
          u=y+1;
          while (u+n<8 && test[x][n+u]==tr1 )
            n++;
          if ( u+n<8 && test[x][n+u]==tr2)
          {
             exist= true;
            /*for (int i=0; i<=n; i++)
            {
              mmc[x][y+i]=1;
            }
            tour=2; */ 
          }
        }

        if (x+1<8 && y+1<8 && test[x+1][y+1]==tr1)
        {

          //      ||
          //     \  /   si il y a un blanc au desous  => a droite 
          //      \/
          n=1;
          u=x+1;
          v=y+1;
          while (u+n<8 && n+v<8 && test[n+u][n+v]==tr1 )
            n++;
          if (u+n<8 && n+v<8 && test[n+u][n+v]==tr2)
          {
             exist= true;
            /*for (int i=0; i<=n; i++)
            {
              mmc[x+i][y+i]=2;
            }
            tour=2; */ 
          }
        }

        if (x-1>0 && y-1>0 && test[x-1][y-1]==tr1)
        {
          //     /\
          //    /__\    si il y a un blanc au desus et  <= a gouche 
          //     ||
          n=1;
          u=x-1;
          v=y-1;
          while (u-n>0 && v-n>0 && test[u-n][v-n]==tr1 )
            n++;

          if (u-n>=0 && v-n>=0 && test[u-n][v-n]==tr2)
          {
             exist= true;
           /* for (int i=0; i<=n; i++)
            {
              mmc[x-i][y-i]=2;
            }
            tour=2;*/ 
          }
        }

        if (x+1<8 && y-1>0 && test[x+1][y-1]==tr1)
        {
          //     /\
          //    /__\    si il y a un blanc au desus et => a droit
          //     ||
          n=1;
          u=x+1;
          v=y-1;
          while (u+n<8 && v-n>0 && test[u+n][v-n]==tr1 )
            n++;
          if (u+n<8 && v-n>=0 &&  test[u+n][v-n]==tr2)
          {
             exist= true;
            /*for (int i=0; i<=n; i++)
            {
              mmc[x+i][y-i]=2;
            }
            tour=2;*/
          }
        }

        if (x-1>0 && y+1<8 && test[x-1][y+1]==tr1)
        {
          //      ||
          //     \  /   si il y a un blanc au desous <= a gauch 
          //      \/
          n=1;
          u=x-1;
          v=y+1;
          while (u-n>0 && v+n<8 && test[u-n][n+v]==tr1 )
            n++;
          if (u-n>=0 && v+n<8 && test[u-n][n+v]==tr2)
          {
            
             exist= true;
            /*for (int i=0; i<=n; i++)
            {
              mmc[x-i][y+i]=2;
            }
            tour=2; */ 
          }
        }
        
    
      }
      
        if(exist==true)
      {  d.x=x;
           d.y=y;
           t.add(d);
           exist=false;
           
           println(x,"   ",y);
      }
      
    }
  
  
  return t;
  
}