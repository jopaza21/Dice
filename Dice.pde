int sumOfDice = 0;
int row = 20;
boolean roll = false;

void setup(){
  size(800,400);
  noLoop();
  textAlign(CENTER);
}

void draw(){
  background(255);
  graphicsOrWtvhehe();
  fill(0);
  text(((row/20)*13),50,355);
  stroke(1);
  for(int y = 10; y <= 300; y+=20){
    for(int x = 0; x < row; x+=20){
      Die dice = new Die(x+10,y);
      dice.roll();
      dice.show();
      sumOfDice = sumOfDice + dice.num;
    }
  }
  rect(150,330,sumOfDice/((float)row/55),40);
  text((sumOfDice), 450, 350);
  System.out.println(sumOfDice);
}
void mousePressed(){
  if((mouseX >= 20 && mouseX <= 80) && (mouseY >= 320 && mouseY <= 380)){
    sumOfDice = 0;
    redraw();
  }
  if((mouseX >= 90 && mouseX <= 130) && (mouseY >= 320 && mouseY <= 345)){
    row += 20;
    if(row >= 800){
      row = 800;
    }
  }
  if((mouseX >= 90 && mouseX <= 130) && (mouseY >= 355 && mouseY <= 380)){
    row -= 20;
    if(row <= 12){
      row = 13;
    }
  }
}
void graphicsOrWtvhehe(){
  noStroke();
  fill(55);
  rect(10,310,590,80); // bigbord
  //buttons
  fill(255);
  rect(20,320,60,60);
  //POwERRRRRR
  rect(90,320,40,25);
  rect(90,355,40,25);
  //power?
  rect(140,320,280,60);
  rect(430,335,40,20);
}

class Die {
  int DieX, DieY, num;
  Die(int x, int y) {
    DieX = x;
    DieY = y;
  }
  void roll() {
    num = (int)(Math.random()*6 + 1);
  }
  void returnBack() {
    DieX = 0;
  }
  void moveRight() {
    DieX += 1;
  }
  void moveLeft() {
    DieX -= 1;
  }
  void moveUp() {
    DieY -= 1;
  }
  void moveDown() {
    DieY += 1;
  }
  void show() {
    fill(255);
    rect(DieX - 10,DieY - 10,20,20);
    fill(55);
    if(num == 1){
      ellipse(DieX,DieY,5,5);
    } else if(num == 2){
      ellipse(DieX - 5,DieY,5,5);
      ellipse(DieX + 5,DieY,5,5);
    } else if(num == 3){
      ellipse(DieX - 5, DieY - 5,5,5);
      ellipse(DieX,DieY,5,5);
      ellipse(DieX + 5, DieY + 5,5,5);
    } else if(num == 4){
      ellipse(DieX - 5,DieY - 5,5,5);
      ellipse(DieX - 5,DieY + 5,5,5);
      ellipse(DieX + 5,DieY - 5,5,5);
      ellipse(DieX + 5,DieY + 5,5,5);
    } else if(num == 5){
      ellipse(DieX - 5,DieY - 5,5,5);
      ellipse(DieX - 5,DieY + 5,5,5);
      ellipse(DieX + 5,DieY - 5,5,5);
      ellipse(DieX + 5,DieY + 5,5,5);
      ellipse(DieX,DieY,5,5);
    } else if(num == 6){
      ellipse(DieX - 5,DieY - 6,5,5);
      ellipse(DieX - 5,DieY + 6,5,5);
      ellipse(DieX - 5,DieY,5,5);
      ellipse(DieX + 5,DieY - 6,5,5);
      ellipse(DieX + 5,DieY + 6,5,5);
      ellipse(DieX + 5,DieY,5,5);
    }
  }
}
