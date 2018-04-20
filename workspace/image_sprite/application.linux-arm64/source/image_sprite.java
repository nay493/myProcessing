import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class image_sprite extends PApplet {



// Example 15-2: Image "sprite"

PImage head; // A variable for the image file
float x,y;   // Variables for image location
float rot;   // A variable for image rotation
PFont f; 
public void setup() {
  // Text 
  
  // Uncomment the following two lines to see the available fonts 
  String[] fontList = PFont.list();
  printArray(fontList);
  // Step 3: Create Font
  f = createFont("Ubuntu Bold Italic", 20);
  // Text end
  
  //size(500,500);
  
  // Load image, initialize variables
  head = loadImage("image1.jpeg");
  x = 0.0f;
  y = width/2.0f;
  rot = 0.0f;
}

public void draw() {
  background(255);
  textFont(f, 50); // Step 4: Specify font to be used
  fill(0);         // Step 5: Specify font color

  // Step 6: Display Text
  text("Rotating Apple", 14, height/8);
  
  //background(255);
  
  // Translate and rotate
  translate(x,y);
  rotate(rot);
  
  // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
  imageMode(CENTER);
  image(head,0,0); 
  
  // Adjust variables for animation
  x += 1.0f;
  rot += 0.09f;
  if (x > width+head.width) {
   x = -head.width;
  }
}


  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "image_sprite" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
