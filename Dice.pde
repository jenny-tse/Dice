Die kylie;
void setup()
  {
      size(1000,1000);
      noLoop();
     
  }
  void draw()
  {
    background(0);
    int sum=0;
    for(int i=130;i<=800;i=i+200){
      for (int x=150;x<=800;x=x+200){
      kylie=new Die(i,x);
      kylie.show();
      kylie.roll();
      sum=sum+kylie.dots;
      }
     
    }
      textSize(50);
      stroke(255);
      fill(255);
      text(sum,470,950);
    
  
   
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     
      int myX, myY,dots;
      Die(int x, int y) //constructor
      {
        myX=x;
        myY=y;
         
      }
      void roll()
      {
        dots=(int)(Math.random()*6+1);
        
    noStroke();
    fill(0);
          if (dots==1){
            ellipse (myX+60,myY+60,20,20);
          }
          if (dots==2){
            ellipse (myX+40,myY+40,20,20);
            ellipse (myX+80,myY+80,20,20);
          }
          if (dots==3){
          ellipse(myX+60,myY+60,20,20);
          ellipse (myX+30,myY+30,20,20);
          ellipse (myX+90,myY+90,20,20);
          }
          if (dots==4){
          ellipse(myX+35,myY+35,20,20);
          ellipse(myX+35,myY+85,20,20);
          ellipse(myX+85,myY+35,20,20);
          ellipse(myX+85,myY+85,20,20);
          }
          if (dots==5){
          ellipse(myX+35,myY+35,20,20);
          ellipse(myX+35,myY+85,20,20);
          ellipse(myX+85,myY+35,20,20);
          ellipse(myX+85,myY+85,20,20);
          ellipse(myX+60,myY+60,20,20);
          }
          if (dots==6){
          ellipse(myX+35,myY+30,20,20);
          ellipse(myX+35,myY+90,20,20);
          ellipse(myX+85,myY+30,20,20);
          ellipse(myX+85,myY+90,20,20);
          ellipse(myX+35,myY+60,20,20);
          ellipse(myX+85,myY+60,20,20);
          
          }
          
        }
          
      void show()
      {
          noStroke();
          fill(255);
          rect(myX,myY,120,120,25);
      }
  }
