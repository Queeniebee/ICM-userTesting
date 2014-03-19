/*
Joelle F. Final Part One:
 User Testing
 
 Accelerometer inputs subsitituted by mouse position
 
 */
import processing.video.*;
Movie myMovie;

void setup() {
  size(600, 600);
  myMovie = new Movie(this, "handsTrees.mov");
  myMovie.loop();
}

void draw() {
  image(myMovie, 0, 0);
}


// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

//Do this kind of computation if new frame was obtained.
if (myPlayer.isFrameNew()) {

  unsigned char * pixels = myPlayer.getPixels();
  // ofPixels totalPixels = myPlayer.getPixelsRef();
  // int nChannels = totalPixels.getNumChannels();
  int nChannels = myPlayer.getPixelsRef().getNumChannels();

  for (int x = 0; x < myPlayer.width; x++) {
    for (int y = 0; y < myPlayer.height; y++) {

      ofColor c = myPlayer.getPixelsRef().getColor(mouseX, mouseY);
      dist = ofDist(x, y, mouseX, mouseY);

      float rectSize = ofMap(dist, 0, myPlayer.width, 300, 10);
      ofSetColor(c);
      ofFill();
      ofRect(x, y, rectSize, rectSize);

      // GOOD STUFF FOR LATER
      // int pixelLoc = y * myPlayer.width + x;

      // int red     = pixels[(pixelLoc) * nChannels];
      // int green   = pixels[(pixelLoc) * nChannels + 1];
      // int blue    = pixels[(pixelLoc) * nChannels + 2];

      // float dist = ofDist(x, y, mouseX, mouseY);
    }
  }        

