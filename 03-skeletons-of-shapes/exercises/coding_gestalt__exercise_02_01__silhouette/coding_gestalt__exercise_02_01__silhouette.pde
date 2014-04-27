
// jaatrod ka dabut pec krasas pixel kordinates
// ka zimēt jaunu attelu izmantojo ieprieksejo kordinasu viduspunktu

//Rihards Vitols

PImage img;
int pC;
int pC2;
int pC3;
int x1, x2, x3;
int y1, y2, y3;

void setup() {

  size(800, 400);

  img = loadImage("4PX.png");
}

void draw() {

  image(img, 0, 0);


  int w = img.width, h = img.height;
  PImage img2 = createImage(w, h, RGB);

  img.loadPixels();

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {

      color pixc = img.get(x, y);
      color pixc2 = img.get(x-3, y);
      color pixc3 = img.get(x+3, y);
      pC = pixc - pixc2;
      pC2 = pixc - pixc3;
      //println(pixc);

      if (pC == -16777215) {
        //println("x1-",x,"  y1-",y);
        x1 = x;
        y1 = y;
        fill(0, 255, 0);
        noStroke();
        rect(x, y, 1, 1);
      }
      //println("PC--------------------", pC);
      if (pC2 == -16777215) {
        //println("x2-",x,"  y2-",y);
        x2 = x;
        y2 = y;
        fill(255, 0, 0);
        noStroke();
        rect(x, y, 1, 1);
      }
      //println("PC2--------------------", pC2);
      //println("X2--------------------", x2);
      pC3 = pC + pC2;
      if (pC3 == -33554430) {
        fill(0, 0, 255);
        noStroke();
        rect(x, y, 1, 1);
      }
      //println("PC3--------------------", pC3);

      img2.pixels[y * w + x] = img.pixels[y * w + x];
    }
  }

  img.updatePixels();
  image (img2, width/2, 0);
}

