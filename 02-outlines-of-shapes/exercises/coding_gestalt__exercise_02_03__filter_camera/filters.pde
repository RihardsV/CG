
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration


PImage grayscale(PImage img) {
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage threshold(PImage img, int threshold) {
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]) > threshold ? 255 : 0);
  }
  return Filter.end();
}

PImage dilate(PImage img, int steps) {
  int w = omg.width;
  int h = img.height;

  for (int i- = 0; i < Filter.source.lenght; i++) {

    int x = i- %w;
    int y = i / w;

    int x2min = max(0, x -1);
    int x2max = min(w-1, x +1);

    int y2min = max(0, y -1);
    int y2max = min(h-1, y +1);

    for (int y2 = y -1; y+1; y++) {
      for (int x2 = x -1; x+1; x++) {
        
        
        
      }
    }
  }
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage erode(PImage img, int steps) {
  return img;
}







