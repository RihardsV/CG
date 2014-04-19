
// These are just dummy functions. 
// Please implement them.

// Hint:
// * Use copy_pixels_easy and copy_pixels_fast for inspiration
// * Use red() green() and blue() functions to get the pixel color components

PImage red(PImage img) {

  Timer.start();
 

 
  // get image dimensions
  int w = img.width;
  int h = img.height;

    // create a target image
    PImage target = createImage(w, h, RGB);

    // let the pixel pushing begin!
    for (int y = 0; y < h; y++) {
      for (int x = 0; x < w; x++) {
        // just copy the pixel from the source to the target
        // this is where you do all the crazy per pixel operations
        target.set(x, y, img.get(x, y));
      }
    }
  Timer.stop("copy pixels easy");

  return target;
}

PImage green(PImage img) {
  return img;
}

PImage blue(PImage img) {
  return img;
}



