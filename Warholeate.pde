// M A K E  Y O U R S E L F  M A R I L Y N !
// Recreate the work of famous pop artist Andy Warhol becoming one of his artworks!
// Just start recording and have fun :)

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
	
void setup() 
{
  size(875,660); 
  background(255);
  
  video = new Capture(this, 160, 120);
  opencv = new OpenCV(this, 160, 120);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() 
{
  scale(1.75);
  opencv.loadImage(video);
 
  //Three groups of three videos
  tint(0,mouseY,0); // R,G,B, some constants and some determined by mouse position
  image(video, 5, 5 ); // position of videos
  
  tint(mouseX,25,15);
  image(video,5,128);
  
  tint(25,mouseY,30);
  image(video,5,251);
  
  tint(mouseX,50,65);
  image(video,170,5);
  
  tint(75,mouseY,70);
  image(video,170,128);
  
  tint(mouseX,75,95);
  image(video,170,251);
  
  tint(125,mouseY,110);
  image(video,335,5);
  
  tint(mouseX,100,100);
  image(video,335,128);
  
  tint(175,mouseY,200);
  image(video,335,251);
}
  
void captureEvent(Capture c) 
{
  c.read();
}