// jaatrod ka dabut pec krasas pixel kordinates
// ka zimēt jaunu attelu izmantojo ieprieksejo kordinasu viduspunktu

//Rihards Vitols

PImage img;
PImage outline;
PImage skelet;

int pC, pC2, pC3, pC4;
//int x1, x2, x3;
//int y1, y2, y3;

void setup() {

  size(1200, 400, P2D);

  img = loadImage("2.png");
  outline = createOutline();
  skelet = createSkelet();
}

void draw() {

  image(img, 0, 0);
  image(outline, 400, 0);
  image(skelet, 800, 0);

}

PImage createOutline() {
  int w = img.width, h = img.height;
  
  PImage img2 = createImage(w, h, 400);
  
  img.loadPixels();
  
  for(int x = 0; x < w; x++) {
    for(int y = 0; y < h; y++) {
      img2.pixels[y * w + x] = img.pixels[y * w + x];
    }
  }
  img2.updatePixels();
  
  img2.loadPixels();

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {

      color pixc = img.get(x, y);
      color pixc2 = img.get(x-3, y);
      color pixc3 = img.get(x+3, y);
      pC = pixc - pixc2;
      pC2 = pixc - pixc3;
      //println(pixc);

      /*if (pC == -16777215) {
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
      }*/
      //println("PC2--------------------", pC2);
      //println("X2-", x2, "  Y2-", y2);
     
      pC3 = pC + pC2;
      if (pC3 == 0) {
        fill(0, 0, 0);
        noStroke();
        rect(x, y, 1, 1);
      }
      //println("PC3--------------------", pC3);
      img2.pixels[y * w + x] = img.pixels[y * w + x];
    }
  }
  img2.updatePixels();
  return img2;
}

PImage createSkelet() {
  int w = img.width, h = img.height;

  img.loadPixels();

  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {

      color pixc = img.get(x, y);
      color pixc2 = img.get(x-3, y);
      color pixc3 = img.get(x+3, y);
      pC = pixc - pixc2;
      pC2 = pixc - pixc3;
      //println(pixc);

      /*if (pC == -16777215) {
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
      }*/
      //println("PC2--------------------", pC2);
      //println("X2-", x2, "  Y2-", y2);
     
      pC3 = pC + pC2;
      if (pC3 == 0) {
        fill(0, 0, 0);
        noStroke();
        rect(x, y, 1, 1);
      }
      //println("PC3--------------------", pC3);
    }
  }
  img.updatePixels();
  return img;
}
