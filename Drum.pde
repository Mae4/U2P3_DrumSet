/*

 This is a game where you have to try and sustain
 the lowest possible score for the longest amount 
 of time. The colors red, purple, yellow, and green 
 disappear by pressing 'q', 'w', 'e', and 'r' 
 accordingly.
 */

import ddf.minim.*; 
Minim minim;
AudioPlayer bass;
AudioPlayer hihat;
AudioPlayer snare;
AudioPlayer tom;
  
int score;

Rect rectangle[] = new Rect[10];

void setup()
{ 
  minim = new Minim(this);
  bass = minim.loadFile("bass.mp3");
  hihat = minim.loadFile("hihat.mp3");
  snare = minim.loadFile("snare.mp3");
  tom = minim.loadFile("tom.mp3");

  size(650, 800);

  for (int i=0; i < 10; i++)
  {
    rectangle[i] = new Rect();
  }
}
void draw()
{
  background(0);
  for (int i=0; i < 10; i++)
  {
    rectangle[i].Draw();
  }
  textSize(80);
  text("Score: "+score, 50, 100);
}
