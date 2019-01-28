int maxgain(int x, int y, int[][] test, int tour , int hr)
{

int max=-100000;
test=mtest(test,x,y,tour);

  ArrayList <noeud> h=new ArrayList <noeud> ();

  h=listn(x, y, test , tour);
 
  if(hr==0)
{  for(int i=0;i<h.size();i++)
  if(max<h.get(i).g)
  max=h.get(i).g;
   return max;
}else
{
  if(tour==1)
    tour=2;
    else
    tour=1;

  for(int i=0;i<h.size();i++)
  {
    noeud d= new noeud(h.get(i).x,h.get(i).y,mingain(h.get(i).x,h.get(i).y,test,tour,hr-1),x,y);
    
  h.set(i,d);
  
  }
  return mc[x][y];
}

 
}

int mingain(int x, int y, int[][] test,int tour,int hr)
{
  int min=100000;
  
test=mtest(test,x,y,tour);

  ArrayList <noeud> h=new ArrayList <noeud> ();

  h=listn(x, y, test , tour);
 
  if(hr==0)
{  for(int i=0;i<h.size();i++)
  if(min>h.get(i).g)
  min=h.get(i).g;
   return min;
}else
{
  if(tour==1)
    tour=2;
    else
    tour=1;

  for(int i=0;i<h.size();i++)
  {
    noeud d= new noeud(h.get(i).x,h.get(i).y,maxgain(h.get(i).x,h.get(i).y,test,tour,hr-1),x,y);
    
  h.set(i,d);
  
  }
   return mc[x][y];
}
 
}









boolean passtour()
{
  
  
 
  return true;
}
class possible{
 
  int x,y;
  public possible(int xx, int yy)
  {
    x=xx;
    y=yy;
    
    
  }
}