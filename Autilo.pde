int d=0,rr=1,hr=3;
 PFont mono;
 int block=0;
  boolean passe=true;
int [][]m ={ 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 2, 1, 0, 0, 0}, 
  {0, 0, 0, 1, 2, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}
}; 
/*int [][]m ={ 
 {1, 1, 1,1, 1, 1, 1,1}, 
 {1, 1,1, 1,1, 1,1, 1}, 
 {1, 1,1, 1,1, 1,1, 1}, 
 {1, 1,1, 1,2, 1,1, 1},  
 {1, 1,1, 1,1, 1,1, 1},  
 {1, 1,1, 1,1, 1,1, 1}, 
 {1, 1,1, 1,1, 1,1, 1}, 
 {1, 1,1, 1,1, 1,1, 1}, 
 }; */
int [][]re ={ 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 2, 1, 0, 0, 0}, 
  {0, 0, 0, 1, 2, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}
};

int [][]rep={ 
  {1000, 10, 500, 500, 500, 500, 10, 1000}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {500, 20, 70, 2, 1, 70, 20, 500}, 
  {500, 20, 70, 1, 2, 70, 20, 500}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {1000, 10, 500, 500, 500, 500, 10, 1000}
}; 
int [][]mc ={ 
  {1000, 10, 500, 500, 500, 500, 10, 1000}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {500, 20, 70, 2, 1, 70, 20, 500}, 
  {500, 20, 70, 1, 2, 70, 20, 500}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {1000, 10, 500, 500, 500, 500, 10, 1000}
}; 
int [][]mmc ={ 
    {1000, 10, 500, 500, 500, 500, 10, 1000}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {500, 20, 70, 2, 1, 70, 20, 500}, 
  {500, 20, 70, 1, 2, 70, 20, 500}, 
  {500, 20, 100, 50, 50, 100, 20, 500}, 
  {10, 10, 20, 20, 20, 20, 10, 10}, 
  {1000, 10, 500, 500, 500, 500, 10, 1000}
}; 
int tour=1, h=0;
int pc=0;
int x, y, cptb=2, cptn=2;
int mode=3;
 ArrayList <possible> t=new ArrayList <possible> ();
void setup()
{
  frameRate(25);
  size(800, 500);
}

void draw()

{mono= loadFont("MaturaMTScriptCapitals-48.vlw");
//textFont(mono,45);
  fill(123);
  rect(0, 0, 800, 500); // le 1er cadre noire 
  fill(130, 51, 0);
  rect(20, 20, 760, 460, 7); // le 2 eme cadre blanc

  fill(102, 51, 0);
  rect(40, 40, 420, 420, 7);   //le cadre qui entour Autilo 
  fill(200, 20, 0);
  rect(50, 50, 400, 400, 7);


  fill(102, 51, 0);
  rect(480, 40, 270, 420, 7);// le tableau de resultat 
  fill(0, 102, 0);
  rect(500, 60, 230, 380, 7);

  for (int i=0; i<9; i++)
  {
    line(50, 50+(i*50), 450, 50+(i*50)); // les lignes de tableau de Autilo  
    line(50+(i*50), 50, 50+(i*50), 450);
  }

int fin=10;
  for (int i=0; i<8; i++)
    for (int k=0; k<8; k++)
      if (m[i][k]!=1 && m[i][k]!=2)
        fin=-1;
if(fin==-1){

  textSize(32);
  fill(200, 20, 0);
  text("Tour : ", 505, 100);
  textSize(70);
  if (tour==1 || tour==3 )
  {
    fill(0);
    text("Noir", 540, 160);
  }  
  if (tour==2 || tour==4 )
  {
    fill(255);
    text("Blanc", 540, 160);
  } }
  textSize(32); 
  fill(255);
  ellipse(540, 220, 50, 50);
  text(cptb, 580, 230);
  fill(0);
  ellipse(540, 280, 50, 50);
  text(cptn, 580, 290);
  fill(200, 20, 0);
  text("Mode", 575, 330);


  for (int i=0; i<8; i++)
    for (int j=0; j<8; j++)
    {
      int o=m[i][j];

      switch(o)
      {   //case 0 :  ellipse(75+(50*i), 75+(50*j), 25, 25);
      case 2 : 
        { 
          fill(255);
          ellipse(75+(50*i), 75+(50*j), 25, 25);  
          break;
        }
      case 1 :  
        {
          fill(0);
          ellipse(75+(50*i), 75+(50*j), 25, 25);
        }
      }
      
      
    }
    if(mode==0)
    {
   
    t=tab(m,tour);
    
  for(int i=0;i<t.size();i++)
    {
      if(tour==1 || tour==3)
      fill(0,0,0,70);
      else 
      fill(255,255,255,70);
      
        ellipse(75+(50*t.get(i).x), 75+(50*t.get(i).y), 25, 25);  
      
    }
    } if(mode==1){
    
        t=tab(mc,tour);
    
  for(int i=0;i<t.size();i++)
    {
      if(tour==3)
      fill(0,0,0,70);
      else 
      fill(255,255,255,70);
      
        ellipse(75+(50*t.get(i).x), 75+(50*t.get(i).y), 25, 25);  
      
    }
    
    }
    



  //-------------------------------------------computer ------------------------------------------------------------    
  if (mode==1) {
    fill(255);
    ellipse(550, 380, 90, 90);
    fill(0, 102, 0);
    ellipse(550, 380, 80, 80);
    
     
   
    if(rr==1){
    for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        m[i][k]=mc[i][k];
        tour=3;
        rr=0;
    }
  }
  strokeWeight(10);  // Beastly
  line(535+5+2+5+2, 391, 545+2, 391);
  line(520+5+2+5+2, 400, 560+2, 400);
  strokeWeight(0);
  fill(0);
  rect(517+5+5, 350, 50, 39, 7);
  fill(0, 0, 255);
  rect(520+5+5, 353, 44, 33, 7);
  fill(255);
  if (mode==1)
    for (int i=0; i<8; i++)
      rect(random(522+5+5, 524+5+5), 354+(i*4), random(10, 40), 2, 9);

  //-------------------------------------------------------------------------------------------------------------------

  //-------------------------------------- player -------------------------------------------------------------
  if (mode==0)
  {
    fill(255);
    ellipse(665, 380, 90, 90);
    fill(0, 102, 0);
    ellipse(665, 380, 80, 80);
    rr=1;
  }
  fill(0);
  rect(640, 385, 50, 25, 7);
  rect(660, 370, 10, 20);
  rect(650, 350, 30, 30, 7);
  fill(0, 0, 255);
  rect(650, 363, 20, 5, 7);
  rect(643, 357, 20, 15, 7);
  rect(667, 357, 20, 15, 7);
  fill(255);
  rect(646, 358, 16, 13, 7);
  rect(669, 358, 16, 13, 7);
  fill(255, 102, 102);
  rect(662, 372, 8, 5, 7);
  fill(0);
  int eyex1=10, eyex2=10, eyey1=2, eyey2=2;
  if (mode==0) {

    if (mouseX<646 && mouseY<363)
    {
      eyex1=3;
      eyex2=3;
      eyey1=-1;
      eyey2=-1;
    }
    if (mouseX>646 && mouseY>363)
    {
      eyex1=14;
      eyex2=14;
      eyey1=7;
      eyey2=7;
    }
    if (mouseX>680 && mouseY<363)
    {
      eyex1=14;
      eyex2=14;
      eyey1=-1;
      eyey2=-1;
    }
    if (mouseX>646 &&mouseX<680   && mouseY<363)
    {
      eyex1=7;
      eyex2=7;
      eyey1=-1;
      eyey2=-1;
    }
    if (mouseX<646 && mouseY>363)
    {
      eyex1=2;
      eyex2=2;
      eyey1=5;
      eyey2=5;
    }
  }
  ellipse(646+eyex1-1, 363+eyey1, 5, 5); 
  ellipse(669+eyex2-1, 363+eyey2, 5, 5); 

  //-----------------------------------------------------------------------------------------------------------

  // ------------------- replay--------------------------------------------------

  fill(200, 40, 0);
  rect(660, 70, 60, 30, 10);
  fill(255, 0, 0);
  if (h==0) {
    rect(658, 68, 60, 30, 10); 
    textSize(18);
    fill(255);
    text("Replay", 660, 90);
  } else {
    textSize(17);
    fill(255);
    text("Replay", 662, 90);
  }


  //--------------------------------------------------------------------------


  //------------------------------------Fin de game ---------------------------------
  fin=10;
  for (int i=0; i<8; i++)
    for (int k=0; k<8; k++)
      if (m[i][k]!=1 && m[i][k]!=2)
        fin=-1;

  if (fin==10)
  {
    fill(130, 51, 0);
    rect(20, 20, 450, 460, 7);
    fill(255);
    // cptb=5;
    if(block==0)
    {if (cptb>cptn)
    { 
      fill(255);
      textSize(85);
      text("♣ White ♣", 30, 200 );
      fill(255, 255, 0);
      textSize(80);
      text("The Winner ", 30, 380 );
    } else {
      if (cptb==cptn)
      {
        fill(255, 0, 0);
        textSize(90);
        text("♦ Equal ♦", 30, 300);
      } else {
        fill(0);
        textSize(85);
        text("♣ Black ♣", 30, 200 );
        fill(255, 255, 0);
        textSize(80);
        text("The Winner", 30, 380 );
      }
    }
  }}
  if(block==1)
  {
     fill(255);
      textSize(85);
      text("♣ White ♣", 30, 200 );
      fill(255, 255, 0);
      textSize(80);
      text("The Winner ", 30, 380 );
  }
  
  if(block==2)
  {
    
     fill(0);
        textSize(85);
        text("♣ Black ♣", 30, 200 );
        fill(255, 255, 0);
        textSize(80);
        text("The Winner", 30, 380 );
        
  }
  // ------------------- replay--------------------------------------------------

  fill(200, 40, 0);
  rect(660, 70, 60, 30, 10);
  fill(255, 0, 0);
  if (h==0) {
    rect(658, 68, 60, 30, 10); 
    textSize(18);
    fill(255);
    text("Replay", 660, 90);
  } else {
    textSize(17);
    fill(255);
    text("Replay", 662, 90);
  }


  //--------------------------------------Mode 3------------------------------------
  
  if(mode==3)
  {
     fill(130, 51, 0);
    rect(20, 20, 450, 460, 7);
   fill(255, 215, 0);


//textFont(mono);
        textSize(120);
        text("Othello", 30, 300);
    
  }
  
  
}


void mousePressed()
{
  cptb=0;
  cptn=0;

  if (mouseX>646 && mouseX<680 && mouseY>350 && mouseY<400 && mode!=0)
  {
    mode=0;
    for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        m[i][k]=re[i][k];
    tour=1;
  }


  if (mouseX>520 && mouseX<580 && mouseY>350 && mouseY<400 && mode!=1) {

    mode=1;
    for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        m[i][k]=rep[i][k];
    tour=3;
  }

  if (mode==0)
    if ( mouseX >60 && mouseY>60 && mouseX <450 && mouseY< 450 )
    { 
      x=(mouseX-60)/50;
      y=(mouseY-60)/50;


      int n, u, v;
      if (tour == 1) // NOIR 
      {

        if (m[x][y]==0)
        {

          if (x+1<8 && m[x+1][y]==2) //  --> si il y a un blanc de couté droit 
          {

            n=1;
            u=x+1;
            while (u+n<8 && m[n+u][y]==2 )
              n++;
            if (u+n<8 &&  m[n+u][y]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y]=1;
              }
              tour=2;
            }
          }

          if (x-1>0 && m[x-1][y]==2)//  <-- si il y a un blanc dans le couté gauche 
          {
            n=1;
            u=x-1;
            while (u-n>0 && m[u-n][y]==2 )
              n++;
            if (u-n>=0 &&  m[u-n][y]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y]=1;
              }
              tour=2;
            }
          }

          if (y>0 && m[x][y-1]==2)
          {  
            //    /\
            //   /__\    si il y a un blanc au desus 
            //    ||
            n=1;
            u=y-1;
            while (u-n>0 && m[x][u-n]==2 )
              n++;

            if (u-n>=0 && m[x][u-n]==1)
            {

              for (int i=0; i<=n; i++)
              {
                m[x][y-i]=1;
              }
              tour=2;
            }
          }

          if (y+1<8 && m[x][y+1]==2) 

          {
            //      ||
            //     \  /   si il y a un blanc au desous 
            //      \/

            n=1;
            u=y+1;
            while (u+n<8 && m[x][n+u]==2 )
              n++;
            if ( u+n<8 && m[x][n+u]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x][y+i]=1;
              }
              tour=2;
            }
          }

          if (x+1<8 && y+1<8 && m[x+1][y+1]==2)
          {

            //      ||
            //     \  /   si il y a un blanc au desous  => a droite 
            //      \/
            n=1;
            u=x+1;
            v=y+1;
            while (u+n<8 && n+v<8 && m[n+u][n+v]==2 )
              n++;
            if (u+n<8 && n+v<8 && m[n+u][n+v]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y+i]=1;
              }
              tour=2;
            }
          }

          if (x-1>0 && y-1>0 && m[x-1][y-1]==2)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et  <= a gouche 
            //     ||
            n=1;
            u=x-1;
            v=y-1;
            while (u-n>0 && v-n>0 && m[u-n][v-n]==2 )
              n++;

            if (u-n>=0 && v-n>=0 && m[u-n][v-n]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y-i]=1;
              }
              tour=2;
            }
          }

          if (x+1<8 && y-1>0 && m[x+1][y-1]==2)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et => a droit
            //     ||
            n=1;
            u=x+1;
            v=y-1;
            while (u+n<8 && v-n>0 && m[u+n][v-n]==2 )
              n++;
            if (u+n<8 && v-n>=0 &&  m[u+n][v-n]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y-i]=1;
              }
              tour=2;
            }
          }

          if (x-1>0 && y+1<8 && m[x-1][y+1]==2)
          {
            //      ||
            //     \  /   si il y a un blanc au desous <= a gauch 
            //      \/
            n=1;
            u=x-1;
            v=y+1;
            while (u-n>0 && v+n<8 && m[u-n][n+v]==2 )
              n++;
            if (u-n>=0 && v+n<8 && m[u-n][n+v]==1)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y+i]=1;
              }
              tour=2;
            }
          }
        }
      } 
      if(tour==2){
        if (m[x][y]==0)
        {

          if (x+1<8 && m[x+1][y]==1) //  --> si il y a un noir de couté droit 
          {

            n=1;
            u=x+1;
            while (u+n<8 && m[n+u][y]==1)
              n++;
            if (u+n<8 &&  m[n+u][y]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y]=2;
              }
              tour=1;
            }
          }

          if (x-1>0 && m[x-1][y]==1)//  <-- si il y a un noir dans le couté gauche 
          {
            n=1;
            u=x-1;
            while (u-n>0 && m[u-n][y]==1 )
              n++;
            if (u-n>=0 &&  m[u-n][y]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y]=2;
              }
              tour=1;
            }
          }

          if (y>0 && m[x][y-1]==1)
          {  
            //    /\
            //   /__\    si il y a un noir au desus 
            //    ||
            n=1;
            u=y-1;
            while (u-n>0 && m[x][u-n]==1 )
              n++;

            if (u-n>=0 && m[x][u-n]==2)
            {

              for (int i=0; i<=n; i++)
              {
                m[x][y-i]=2;
              }
              tour=1;
            }
          }

          if (y+1<8 && m[x][y+1]==1) 

          {
            //      ||
            //     \  /   si il y a un noir au desous 
            //      \/

            n=1;
            u=y+1;
            while (u+n<8 && m[x][n+u]==1 )
              n++;
            if ( u+n<8 && m[x][n+u]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x][y+i]=2;
              }
              tour=1;
            }
          }

          if (x+1<8 && y+1<8 && m[x+1][y+1]==1)
          {

            //      ||
            //     \  /   si il y a un noir au desous  => a droite 
            //      \/
            n=1;
            u=x+1;
            v=y+1;
            while (u+n<8 && n+v<8 && m[n+u][n+v]==1 )
              n++;
            if (u+n<8 && n+v<8 && m[n+u][n+v]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y+i]=2;
              }
              tour=1;
            }
          }

          if (x-1>0 && y-1>0 && m[x-1][y-1]==1)
          {
            //     /\
            //    /__\    si il y a un noir au desus et  <= a gouche 
            //     ||
            n=1;
            u=x-1;
            v=y-1;
            while (u-n>0 && v-n>0 && m[u-n][v-n]==1 )
              n++;

            if (u-n>=0 && v-n>=0 && m[u-n][v-n]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y-i]=2;
              }
              tour=1;
            }
          }

          if (x+1<8 && y-1>0 && m[x+1][y-1]==1)
          {
            //     /\
            //    /__\    si il y a un noir au desus et => a droit
            //     ||
            n=1;
            u=x+1;
            v=y-1;
            while (u+n<8 && v-n>0 && m[u+n][v-n]==1 )
              n++;
            if (u+n<8 && v-n>=0 &&  m[u+n][v-n]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x+i][y-i]=2;
              }
              tour=1;
            }
          }

          if (x-1>0 && y+1<8 && m[x-1][y+1]==1)
          {
            //      ||
            //     \  /   si il y a un noir au desous <= a gauch 
            //      \/
            n=1;
            u=x-1;
            v=y+1;
            while (u-n>0 && v+n<8 && m[u-n][n+v]==1 )
              n++;
            if (u-n>=0 && v+n<8 && m[u-n][n+v]==2)
            {
              for (int i=0; i<=n; i++)
              {
                m[x-i][y+i]=2;
              }
              tour=1;
            }
          }
        }
      }
    }
  if (mode==1)
    if ( mouseX >60 && mouseY>60 && mouseX <450 && mouseY< 450 )
    { 
      x=(mouseX-60)/50;
      y=(mouseY-60)/50;


      int n, u, v;
      if (tour==3) // NOIR 
      {

        if (mc[x][y]!=1 && mc[x][y]!=2)
        {

          if (x+1<8 && mc[x+1][y]==2) //  --> si il y a un blanc de couté droit 
          {

            n=1;
            u=x+1;
            while (u+n<8 && mc[n+u][y]==2 )
              n++;
            if (u+n<8 &&  mc[n+u][y]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y]=1;
              }
              tour=4;
            }
          }

          if (x-1>0 && mc[x-1][y]==2)//  <-- si il y a un blanc dans le couté gauche 
          {
            n=1;
            u=x-1;
            while (u-n>0 && mc[u-n][y]==2 )
              n++;
            if (u-n>=0 &&  mc[u-n][y]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y]=1;
              }
              tour=4;
            }
          }

          if (y>0 && mc[x][y-1]==2)
          {  
            //    /\
            //   /__\    si il y a un blanc au desus 
            //    ||
            n=1;
            u=y-1;
            while (u-n>0 && mc[x][u-n]==2 )
              n++;

            if (u-n>=0 && mc[x][u-n]==1)
            {

              for (int i=0; i<=n; i++)
              {
                mc[x][y-i]=1;
              }
              tour=4;
            }
          }

          if (y+1<8 && mc[x][y+1]==2) 

          {
            //      ||
            //     \  /   si il y a un blanc au desous 
            //      \/

            n=1;
            u=y+1;
            while (u+n<8 && mc[x][n+u]==2 )
              n++;
            if ( u+n<8 && mc[x][n+u]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x][y+i]=1;
              }
              tour=4;
            }
          }

          if (x+1<8 && y+1<8 && mc[x+1][y+1]==2)
          {

            //      ||
            //     \  /   si il y a un blanc au desous  => a droite 
            //      \/
            n=1;
            u=x+1;
            v=y+1;
            while (u+n<8 && n+v<8 && mc[n+u][n+v]==2 )
              n++;
            if (u+n<8 && n+v<8 && mc[n+u][n+v]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y+i]=1;
              }
              tour=4;
            }
          }

          if (x-1>0 && y-1>0 && mc[x-1][y-1]==2)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et  <= a gouche 
            //     ||
            n=1;
            u=x-1;
            v=y-1;
            while (u-n>0 && v-n>0 && mc[u-n][v-n]==2 )
              n++;

            if (u-n>=0 && v-n>=0 && mc[u-n][v-n]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y-i]=1;
              }
              tour=4;
            }
          }

          if (x+1<8 && y-1>0 && mc[x+1][y-1]==2)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et => a droit
            //     ||
            n=1;
            u=x+1;
            v=y-1;
            while (u+n<8 && v-n>0 && mc[u+n][v-n]==2 )
              n++;
            if (u+n<8 && v-n>=0 &&  mc[u+n][v-n]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y-i]=1;
              }
              tour=4;
            }
          }

          if (x-1>0 && y+1<8 && mc[x-1][y+1]==2)
          {
            //      ||
            //     \  /   si il y a un blanc au desous <= a gauch 
            //      \/
            n=1;
            u=x-1;
            v=y+1;
            while (u-n>0 && v+n<8 && mc[u-n][n+v]==2 )
              n++;
            if (u-n>=0 && v+n<8 && mc[u-n][n+v]==1)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y+i]=1;
              }
              tour=4;
            }
          }
        }
      }
      
       for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        mmc[i][k]=mc[i][k];
    }

  if (tour==4)
  {
    //println("minmax");
noeud r=minmax();

x=r.x;
y=r.y;

mc[x][y]=2;
       int n, u, v;
if (x+1<8 && mc[x+1][y]==1) //  --> si il y a un blanc de couté droit 
          {

            n=1;
            u=x+1;
            while (u+n<8 && mc[n+u][y]==1 )
              n++;
            if (u+n<8 &&  mc[n+u][y]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y]=2;
              }
              tour=3;
            }
          }

          if (x-1>0 && mc[x-1][y]==1)//  <-- si il y a un blanc dans le couté gauche 
          {
            n=1;
            u=x-1;
            while (u-n>0 && mc[u-n][y]==1 )
              n++;
            if (u-n>=0 &&  mc[u-n][y]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y]=2;
              }
              tour=3;
            }
          }

          if (y>0 && mc[x][y-1]==1)
          {  
            //    /\
            //   /__\    si il y a un blanc au desus 
            //    ||
            n=1;
            u=y-1;
            while (u-n>0 && mc[x][u-n]==1 )
              n++;

            if (u-n>=0 && mc[x][u-n]==2)
            {

              for (int i=0; i<=n; i++)
              {
                mc[x][y-i]=2;
              }
              tour=3;
            }
          }

          if (y+1<8 && mc[x][y+1]==1) 

          {
            //      ||
            //     \  /   si il y a un blanc au desous 
            //      \/

            n=1;
            u=y+1;
            while (u+n<8 && mc[x][n+u]==1 )
              n++;
            if ( u+n<8 && mc[x][n+u]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x][y+i]=2;
              }
              tour=3;
            }
          }

          if (x+1<8 && y+1<8 && mc[x+1][y+1]==1)
          {

            //      ||
            //     \  /   si il y a un blanc au desous  => a droite 
            //      \/
            n=1;
            u=x+1;
            v=y+1;
            while (u+n<8 && n+v<8 && mc[n+u][n+v]==1 )
              n++;
            if (u+n<8 && n+v<8 && mc[n+u][n+v]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y+i]=2;
              }
              tour=3;
            }
          }

          if (x-1>0 && y-1>0 && mc[x-1][y-1]==1)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et  <= a gouche 
            //     ||
            n=1;
            u=x-1;
            v=y-1;
            while (u-n>0 && v-n>0 && mc[u-n][v-n]==1 )
              n++;

            if (u-n>=0 && v-n>=0 && mc[u-n][v-n]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y-i]=2;
              }
              tour=3;
            }
          }

          if (x+1<8 && y-1>0 && mc[x+1][y-1]==1)
          {
            //     /\
            //    /__\    si il y a un blanc au desus et => a droit
            //     ||
            n=1;
            u=x+1;
            v=y-1;
            while (u+n<8 && v-n>0 && mc[u+n][v-n]==1 )
              n++;
            if (u+n<8 && v-n>=0 &&  mc[u+n][v-n]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x+i][y-i]=2;
              }
              tour=3;
            }
          }

          if (x-1>0 && y+1<8 && mc[x-1][y+1]==1)
          {
            //      ||
            //     \  /   si il y a un blanc au desous <= a gauch 
            //      \/
            n=1;
            u=x-1;
            v=y+1;
            while (u-n>0 && v+n<8 && mc[u-n][n+v]==1 )
              n++;
            if (u-n>=0 && v+n<8 && mc[u-n][n+v]==2)
            {
              for (int i=0; i<=n; i++)
              {
                mc[x-i][y+i]=2;
              }
              tour=3;
            }
          }

    

    
  }

if(mode==0)
  for (int i=0; i<8; i++)
    for (int k=0; k<8; k++)
    {
      if (m[i][k]==2)
      {
        cptb++;
      } else {
        if (m[i][k]==1)
        {
          cptn++;
        }
      }
    }
    if(mode==1)
 { for (int i=0; i<8; i++)
    for (int k=0; k<8; k++)
    {
      if (mc[i][k]==2)
      {
        cptb++;
      } else {
        if (mc[i][k]==1)
        {
          cptn++;
        }
      }
    }
  
     for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        m[i][k]=mc[i][k];
        
             t=tab(m,4);
  for(int i=0;i<t.size();i++)
    {
      if(tour==1 || tour==3)
      fill(0,0,0,70);
      else 
      fill(255,255,255,70);
      
        ellipse(75+(50*t.get(i).x), 75+(50*t.get(i).y), 25, 25);  
      
    }
 }
  if (mouseX>=658 && mouseX<720 && mouseY>68 && mouseY<100 )
  {
    h=1;
  }
//  println(tour);
  
  
}

void mouseClicked()
{
  if (mouseX>=658 && mouseX<720 && mouseY>68 && mouseY<100 )
  {
    
    h=0;
    if(mode==0)
    {for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        m[i][k]=re[i][k];
    tour=1;
  
}
    if(mode==1)
      {for (int i=0; i<8; i++)
      for (int k=0; k<8; k++)
        mc[i][k]=rep[i][k];
    tour=3;}
    block=0;
    
  }
}
 ArrayList <noeud> Tab=new ArrayList <noeud> ();
noeud minmax()
{
  int max=-10000000;
  noeud  p=new noeud(0,1,0,0,0);
  
  int [][]test = new int[8][8];
  for (int i=0; i<8; i++)
   for (int k=0; k<8; k++)
        test[i][k]=mmc[i][k];
        
  Tab=listn(-1,-1 , test , 2); // return la list des noeud
        println("dans la liste");
        if(Tab.size()==0)
        {
      /*    for (int i=0; i<8; i++)
   for (int k=0; k<8; k++)
        if(mc[i][k]!=2 && mc[i][k]!=1)
        mc[i][k]=1;
         
         block=2;*/
         tour=3;
          
        }
   for(int i=0;i<Tab.size();i++)
     { println(i+"     "+Tab.get(i).x+"  "+Tab.get(i).y+"  "+Tab.get(i).g+"  "+Tab.get(i).xp+"  "+Tab.get(i).yp);
 // m[Tab.get(i).x+2][Tab.get(i).y+2]=2;

if(max<Tab.get(i).g)
{
  max=Tab.get(i).g;
p= new noeud(Tab.get(i).x,Tab.get(i).y,2,-1,-1);
}

}
mmc=mtest(mmc,p.x,p.y,2);
  
    for (int i=0; i<8; i++)
    {  for (int k=0; k<8; k++)
      print(mmc[i][k]+"    ");
  println();  
  }
      
  
  return p;
  
}






public class noeud {
  int x, y, g , xp ,yp;
  
noeud(int a,int b, int c , int xpere , int ypere){
  x=a;
  y=b;
  g=c;
  xp=xpere;
  yp=ypere;
  
  
}
  noeud(){}
}


public class arbre {
  
  
  
}