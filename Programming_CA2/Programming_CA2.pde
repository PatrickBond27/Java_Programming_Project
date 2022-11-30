// Patrick Bondaruk - N00201161

// The bow and arrow animation

// The animation works when mouse button is clicked on the screen 

// Reference links 
// https://processing.org/examples/bounce.html 
// https://processing.org/reference/mouseClicked_.html

//arrow stick
int x = 100;

//arrow tip
int x1 = 190;
int x2 = 190;
int x3 = 220;

//arrow feather
int quad1 = 70;
int quad2 = 100;
int quad3 = 110;
int quad4 = 80;
int quad5 = 80;
int quad6 = 110;
int quad7 = 100;
int quad8 = 70;

int xspeed;
int xdirection;

//mouse clicked function
boolean clicked = false;

//target
float ypos = 100;          //position of a target
float yspeed = 0.6;        //speed of a target
int ydirection = 1;        //direction of a target

void setup() {
  frameRate(250);
  size(500, 300);
  background(150);
  xspeed = 1;
  xdirection = 1;
}

void draw() {
  background(150);

  fill(255);                 //target color
  rect(470, ypos, 20, 80);   //target shape

  ypos = ypos + (yspeed * ydirection);    //moving a target
  if (ypos > 160 || ypos < 60) {
    ydirection = -ydirection;
  }

  //bow
  fill(70);                  //bow handle color
  rect(170, 110, 10, 80);    //bow handle
  fill(#CB6D15);                                   //bow curve color
  rect(170, 90, 10, 20);                           //bow straight top
  rect(170, 190, 10, 20);                          //bow straight bottom
  quad(130, 20, 140, 20, 180, 90, 170, 90);        //bow bended line top
  quad(130, 280, 140, 280, 180, 210, 170, 210);    //bow bended line bottom
  fill(50);                                        //bow string line color
  quad(130, 20, 132, 20, 80, 150, 78, 150);        //bow string line top
  quad(130, 280, 132, 280, 80, 150, 78, 150);      //bow string line bottom

  //arrow
  fill(#6C2E0A);              //arrow color
  rect(x, 145, 100, 6);       //arrow shape
  fill(200);                                 //arrow tip color
  triangle(x1, 157, x2, 139, x3, 148);       //arrow tip shape
  fill(220);                                             //arrow feather shape color
  quad(quad1, 138, quad2, 138, quad3, 148, quad4, 148);  //top arrow feather shape
  quad(quad5, 148, quad6, 148, quad7, 158, quad8, 158);  //bottom arrow feather shape

  if (clicked) {
    background(150);

    //bow
    fill(70);                  //bow handle color
    rect(170, 110, 10, 80);    //bow handle
    fill(#CB6D15);                                   //bow curve color
    rect(170, 90, 10, 20);                           //bow straight top
    rect(170, 190, 10, 20);                          //bow straight bottom
    quad(130, 20, 140, 20, 180, 90, 170, 90);        //bow bended line top
    quad(130, 280, 140, 280, 180, 210, 170, 210);    //bow bended line bottom
    fill(50);                                        //bow string color
    rect(130, 20, 2, 260);                           //bow string shape

    //arrow
    fill(#6C2E0A);            //arrow color when clicked
    rect(x, 145, 100, 6);     //arrow shape when clicked
    fill(200);                              //arrow tip color
    triangle(x1, 157, x2, 139, x3, 148);    //arrow tip shape
    fill(#6C2E0A);              //arrow color
    rect(x, 145, 100, 6);       //arrow shape
    fill(200);                                 //arrow tip color
    triangle(x1, 157, x2, 139, x3, 148);       //arrow tip shape
    fill(220);                                             //arrow feather shape color
    quad(quad1, 138, quad2, 138, quad3, 148, quad4, 148);  //top arrow feather shape
    quad(quad5, 148, quad6, 148, quad7, 158, quad8, 158);  //bottom arrow feather shape

    //moving the arrow
    x = x + (xspeed * xdirection);
    x1 = x1 + (xspeed * xdirection);
    x2 = x2 + (xspeed * xdirection);
    x3 = x3 + (xspeed * xdirection);
    quad1 = quad1 + (xspeed * xdirection);
    quad2 = quad2 + (xspeed * xdirection);
    quad3 = quad3 + (xspeed * xdirection);
    quad4 = quad4 + (xspeed * xdirection);
    quad5 = quad5 + (xspeed * xdirection);
    quad6 = quad6 + (xspeed * xdirection);
    quad7 = quad7 + (xspeed * xdirection);
    quad8 = quad8 + (xspeed * xdirection);

    //changing the direction of the arrow
    if (x3 > 470) {
      xdirection = -xdirection;
    }
    
    //displaying text when arrow is shot
    if (x3 < 470) {
      textSize(32);
      fill(0, 230, 0);
      text("NICE SHOT!", 220, 80);
    }

    //target
    fill(255);                 //target color
    rect(470, ypos, 20, 80);   //target shape
  }
}

//mouse clicked function
void mouseClicked() {
  clicked = true;
}
