PImage photo, maskImage;

void setup() {
  //size(100, 100);
  fullScreen();
  photo = loadImage("svg1.jpeg");
  maskImage = loadImage("svg1.jpeg");
  photo.mask(maskImage);
}

void draw() {
  image(photo, 0, 0);
  image(photo, width/4, 0);
}
