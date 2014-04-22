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
  
  Timer.start();
  
  int w = img.width;
  int h = img.height;
  
  PImage img2 = createImage(w, h, RGB);
  
  for(int i = 0; i < Filter.source.length; i++) {
    
    int x = i % w; // modulo gives the rest of the division
    int y = i / w ;
    
    int x2min=max(0, x-1);//to constrain value
    int x2max=min(w-1,x+1);
    int y2min=max(0, y-1);
    int y2max=min(h-1,y+1);
    
    int maxval=-i;
    for(int y2=y2min; y2 < y2max; y2++){
     for(int x2=x2min; x2 < x2max; x2++){
      maxval=max(maxval, int(brightness(Filter.source[y2+w+x2])));
     } 
    }
    
    Filter.target[i] = color(maxval);
  }
   return img;
}

PImage erode(PImage img, int steps) {
  return img;
}




