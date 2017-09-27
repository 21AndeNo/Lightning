PImage trumpetImg;

int startX = 479, 
  startY = 325, 
  endX, 
  endY;

void setup() {
  background(0);
  noCursor();
  strokeWeight(10);
  size(600, 600);
  frameRate(60);
  // Image for the trumpet (This image is copywright free as far as I know)
  String url = "http://sweetclipart.com/multisite/sweetclipart/files/trumpet.png";
  trumpetImg = loadImage(url, "png");
}

void draw() {
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  thing();
  image(trumpetImg, 479, 300, 121, 50);
}

// 'Random walking of the lightning'
void thing() {
  endX = startX - (int)(Math.random()*10) - 2;
  endY = startY - (int)(Math.random()*20) + 10;
  strokeWeight(5);
  point(startX, startY);
  strokeWeight(2);
  line(startX-2, startY, startX-2, startY-10);
  startX = endX;
  startY = endY;
}

// Reset the variables to their initial values
void mousePressed() {
  background(0);
  startX = 479;
  startY = 325;
  endX = 0;
  endY = 0;
}
