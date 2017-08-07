void setup() {
  PImage waldo = loadImage("Where's Waldo.jpg"); // 2. Change this to match your file name.
  size(1000, 1000);
  waldo.resize(1000, 1000);
  background(waldo);
  image(waldo, 0, 0);
}

void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
   println("X: " + mouseX + " Y: " + mouseY); 

  // 4. If the mouse is on Waldo, print “Waldo found!”
  if(mousePressed){
if(mouseX > 411 && mouseX < 438 && mouseY > 675 && mouseY < 780){
  println("Waldo found!");
  playWoohoo();
}
  
  else {
    playDoh();
  }
  }
}
  // 5. If Waldo is found, also use the method below to play “Woohoo”

  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”


void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
  doh.stop();
  doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");




