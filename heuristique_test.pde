int [][] mtest(int [][] test, int x, int y, int tr1 )
{
   int u, n, v;
  int tr2=1;

  if (tr1==1)
    tr2=2;


  if (x+1<8 && test[x+1][y]==tr1) //  --> si il y a un blanc de couté droit 
  {

    n=1;
    u=x+1;
    while (u+n<8 && test[n+u][y]==tr1 )
      n++;
    if (u+n<8 &&  test[n+u][y]==tr2)
    {
     
      for (int i=0; i<=n; i++)
       {
       test[x+i][y]=tr2;
       }
       
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
      //println("je suis la");
    
       for (int i=0; i<=n; i++)
       {
       test[x-i][y]=tr2;
       }
     
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
      

       for (int i=0; i<=n; i++)
       {
       test[x][y-i]=tr2;
       }
       
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
     
      for (int i=0; i<=n; i++)
       {
      test[x][y+i]=tr2;
       }
      
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
      
      for (int i=0; i<=n; i++)
       {
       test[x+i][y+i]=tr2;
       }
       
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
      
       for (int i=0; i<=n; i++)
       {
       test[x-i][y-i]=tr2;
       }
      
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
      
      for (int i=0; i<=n; i++)
       {
      test[x+i][y-i]=tr2;
       }
       
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

     
      for (int i=0; i<=n; i++)
       {
     test[x-i][y+i]=tr2;
       }
     
    }
  }


  return test;
}