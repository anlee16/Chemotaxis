Bacteria []kay;
void setup()
{
  size(400,400);
  kay = new Bacteria[100];
  for(int i = 0; i < kay.length; i++) {
    kay[i] = new Bacteria();
  }
}
void draw()
{
  background(200,200,200);
  noStroke();
  fill(0);
  ellipse(250, 210, 60, 60);//ear
  rect(187, 290, 25, 50);//neck
  ellipse(150, 210, 60, 60);
  ellipse(200, 270, 100, 100);//head
  rect(250, 370, 60, 30);//tunnel to door
  fill(255, 0, 0);
  ellipse(200, 425, 175, 175);//main clubhouse
  fill(255,246,59);
  ellipse(220,400,30,40);//window
  ellipse(188,400,30,40);
  ellipse(320,375,30,70);//door
  for (int i = 0; i<kay.length; i++) {
    kay[i].show();
    kay[1].walk();
  }
}
void mouseClicked() {
  setup();
}
class Bacteria
{
  int myX;
  int myY;
  int size;
  Bacteria()
  {
    myX = (int)(Math.random()*495-5);
    myY = (int)(Math.random()*495-5);
    size = 3;
  }
  void walk() {
    if ((mouseX >= 200 && mouseX <=270) && (mouseY >= 300 && mouseY <=400))
      myX = myY = 10000;
    if (mouseX > myX){
      myX = myX + (int)(Math.random()*5)-1;
    } else {
      myX = myX + (int)(Math.random()*5)-4;
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*5)-1;
    } else {
      myY = myY + (int)(Math.random()*5)-4;
    }
  }
  void show()
  {
    stroke(196, 103, 103);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse (myX, myY, 20, 20);
    ellipse (myX-10, myY-14, 15, 15);
    ellipse (myX-10, myY-14, 15, 15);
  }
} 
