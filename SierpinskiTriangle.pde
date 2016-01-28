int limit = 10;
int paramt = 2;
int theColor = 255;
int theColor2 = 255;
int theColor3 = 0;
public void setup()
{
  size(400,400);
}
public void draw()
{
   background(0); 
   sierpinski(0,400,400);
}
public void mouseDragged()//optional
{
  if(mouseX >10) {
    limit = mouseX;
  }
  if(mouseX >25) {
    theColor = (int)(Math.random()*230)+25;
    theColor2 = (int)(Math.random()*230)+25;
    theColor3 = (int)(Math.random()*230)+25;
  }
  
}
public void sierpinski(int x, int y, int len) 
{
  if(len > limit) {
    sierpinski(x,y,len/paramt);
    sierpinski(x+len/paramt,y,len/paramt);
    sierpinski(x+len/(paramt*2),y-len/paramt,len/paramt);
  } else {
    fill(theColor,theColor2,theColor3);
    triangle(x,y,x+len,y,x+len/paramt,y-len);
  }

}
