
//"VariablenContainer" - global Variablen
int x =200;
int y = 50;
int fx = 1;
int fy = 1;
int xr = 200;

void setup() {
  size(700,700);
  background(200,200,0);
}

//void draw ruft Methoden auf
void draw()  {
 hgAufbau();                   //die Methode zum Aufbau des Hintergrundes wird aufgerufen
 paddleAufbau();               //Methode zum Aufbau des Schlägers wird aufgerufen
 if (keyPressed == true) {     //Wenn irgendeine Taste gedrückt ist
   paddleMove();               //wird Methode zur Bewegungserzeugung des Schlägers aufgerufen
 }
 ballAufbau();                 //MethodenAufruf zum BallAufbau
 ballMove();                   //MethodenAufruf zur Erzeugung der Ballbewegung
}

//oben aufgerufene Methoden:

void hgAufbau(){
 background (200,200,0); 
}

 void paddleAufbau() {
 fill(200,0,100);
 strokeWeight(4);
 stroke(0,0,250);
 rect(xr,550,300,50);
 }
 void paddleMove()  {
  if (key == 'l')  {
      xr = xr + 1;
    }
    if (key == 'k')  {
      xr = xr - 1;
    }
 }
    void ballAufbau()   {
    fill(50,100,250);
    strokeWeight(5);
    stroke(50,0,255);
    ellipse(x,y,30,30);
  }
  
  void ballMove()   {
     if (x == 690 || x==10) {
      fx = fx*(-1);
      fill(250,150,0);
    }
    x = x + (1*fx);
  
    if ((y == 690) || (y == 10)) {
      fy = fy*(-1);
    }
    y = y + (1*fy);  
    
  }
 
    
 
