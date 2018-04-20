

// Example 15-2: Image "sprite"

PImage head; // A variable for the image file
float x,y;   // Variables for image location
float rot;   // A variable for image rotation
PFont f; 

int value = 0;


void keyPressed() {
  if (value == 1) {
    value = 255;
    size(500, 500);
background(0);
blendMode(ADD);
stroke(123);
strokeWeight(50);
line(25, 25, 75, 75);
line(75, 25, 25, 75);
  } else {
    value = 0;
  }
}

void setup() {
  //
  
  //size(500, 500);
  String[] args = {"TwoFrameTest"};
  SecondApplet sa = new SecondApplet();
  PApplet.runSketch(args, sa);
  
    String[] args2 = {"Thir Applet"};
  ThirdApplet ta = new ThirdApplet();
  PApplet.runSketch(args, ta);
  //ta.setup();
  //ta.draw();
  
  // Text 
  //size(200, 200, P3D);
  // Uncomment the following two lines to see the available fonts 
  String[] fontList = PFont.list();
  printArray(fontList);
  // Step 3: Create Font
  f = createFont("Ubuntu Bold Italic", 20);
  // Text end
  
  //size(500,500);
  
  // Load image, initialize variables
  head = loadImage("image1.jpeg");
  x = 0.0;
  y = width/2.0;
  rot = 0.0;
}

void draw() {
  background(255);
  fill(value);
  rect(25, 25, 50, 50);
  //fill(0, 51, 102); 
  //ambientLight(102, 102, 102);
  lightSpecular(204, 204, 204);
  directionalLight(102, 102, 102, 0, 0, -1);
  specular(255, 255, 255);
  translate(30, 50, 0);
  shininess(2.0);
  sphere(20); 

  textFont(f, 50); // Step 4: Specify font to be used
  fill(0);         // Step 5: Specify font color

  // Step 6: Display Text
  text("Rotating Apple", 14, height/8);
  
  //background(255);
  
  // Translate and rotate
  //ambientLight(102, 102, 102);
  translate(x,y);
  rotate(rot);
  
  // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
  imageMode(CENTER);
  //spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 2);
  image(head,0,0); 
  
  // Adjust variables for animation
  x += 1.0;
  rot += 0.09;
  if (x > width+head.width) {
   x = -head.width;
  }
}


public class SecondApplet extends PApplet {

  public void settings() {
     size(500, 500);
   }
  public void draw() {
     background(255);
    fill(0);
    ellipse(100, 50, 100, 100);
   }
}


public class ThirdApplet extends PApplet{
Ball ball1;
Ball ball2;

 public void settings() {
     size(500, 500);
       // Initialize balls

   }
void setup() {
      ball1 = new Ball(100);
  ball2 = new Ball(50);

}

void draw() {
  background(255);
 // print("Drawing balls");
  // Move and display balls
  //ball1.move();
  //ball2.move();
  ball1.display();
  ball2.display();
  //print("Drawing balls end !!");
}
}
