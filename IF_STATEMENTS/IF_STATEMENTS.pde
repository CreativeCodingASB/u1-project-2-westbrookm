PShape square9;
PShape square;
PShape square2;
PShape square3;
PShape square4;
PShape square5;
PShape square6;
PShape square7;
PShape square8;
PShape circle;
PShape circle2;
PShape arc;
int diameter=50;
int positionX=50;
int Switch=0;
int position;
int x;

int y;

void setup() {
  fullScreen();
  
//arc(width/2, height/10,200,100,HALF_PI,-HALF_PI);
//arc(width/2, height/10, 300, 800, -HALF_PI, HALF_PI);
 circle2=createShape(RECT,605,475,10,300);
 circle2.setFill(color(255,0,0));
 circle2.setStroke(false);
 circle=createShape(RECT,605,-25,10,300);
 circle.setFill(color(255,0,0));
 circle.setStroke(false);
 square8=createShape(RECT,1250 ,-20,50,300);
 square8.setFill(color(255,0,0));
 square8.setStroke(false);
  square7=createShape(RECT,1250 ,470,50,300);
 square7.setFill(color(255,0,0));
 square7.setStroke(false);
  square6=createShape(RECT,-70,470,50,300);
 square6.setFill(color(255,0,0));
 square6.setStroke(false);
  square5=createShape(RECT,-30,770,1290,50);
 square5.setFill(color(255,0,0));
 square5.setStroke(false);
  square4=createShape(RECT,-20,-340,1280,320);
 square4.setFill(color(255,0,0));
 square4.setStroke(false);
  square3=createShape(RECT,-70,-40,50,320);
 square3.setFill(color(255,0,0));
 square3.setStroke(false);
  square2= createShape(RECT,1250,280,50,190);
 square2.setFill(color(0,0,255));
 square2.setStroke(false);
  square = createShape(RECT, -70,280, 50, 190);
 square.setStroke(false);
 square.setFill(color(0, 0, 255));
 noStroke(); 
 smooth();
}

void draw() {
  background(0,255,0);
  DrawBoard();
  


}

void DrawBoard()
{
   
  ellipse(width/2, height/2, 200,200);
  rect(70, 280, 10, 90);
//arc(620,280,200,200,0,PI);
//arc(628, 380, 200, 200, 0, PI);
  shape(square,25,25);
  shape(square2,25,25);
  shape(square3,25,25);
  shape(square4,25,25);
  shape(square5,25,25);
  shape(square6,25,25);
  shape(square7,25,25);
  shape(square8,25,25);
  shape(circle2,25,25);
  shape(circle,25,25);
  if(positionX>=width-diameter/2){
    Switch=1;
  }
  if(positionX==diameter/2){
    Switch=0;
  }
      if(Switch==0){
      positionX+=10; //position=position+1;
}
      else{
        positionX-=10;
  }
  ellipse(positionX,100,diameter,diameter);
  println(positionX);
}