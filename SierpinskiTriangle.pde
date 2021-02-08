private int limit=400;
public void setup()
{
  size(400,400);
}
public void draw()
{
background(200);
sierpinski(30,390,350);
}
public void mouseDragged()//optional
{
  if(mouseX>1)
   limit=mouseX;
}
public void sierpinski(int x, int y, int len) 
{
if (len<=limit){
  triangle(x,y,x+len,y,x+len/2,y-len);
}
else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
}
}
