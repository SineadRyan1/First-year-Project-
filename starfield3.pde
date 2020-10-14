// Source of code  Daniel Schiffman via youtube Starfield challenge  on
//the coding train page on his youtube channel .
//and modified by myself to create an intro design and more vibrant colour scheme.
//all 

import ddf.minim.*; // minim library used for background music
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;

Star [] stars = new Star[800];// array of stars
float speed;
float colorAngle = 1.0;

PFont font; // used for 
PImage bgd;//my code
float offset =0;//my code adapted from processing site example of transparency
float easing =0.05;
int b;//mine
void setup()
{
  size(612,344,P3D);// setting screen size and allowing for 3d visuals,//mine
  bgd = loadImage( "Blue-Box.jpg");//mine
  minim = new Minim(this); //uploading minim library for background music//mine
  song = minim.loadFile("DoctorWho.mp3");//mine
  
  for(int i = 0; i < stars.length; i++) //using a for loops to set stars array up.//schiffman
  {
      stars[i] = new Star();//schiffman
    }
  }
  
void draw()
{
  speed = map (500,0,width,0,50); //modified code  of Schiffman to a speed without mouse control.
  image(bgd, 0, 0);// this image will be in the background of the tardis//mine
  float ax =(mouseX-bgd.width/2)-offset;// mouse control is instead for the tardis image to create movement illusion. 
  offset += ax * easing; //this code was adapted from examples of transparency on Processing website
  tint(255,127);//half opacity //processing example
  image(bgd, offset, 0);//mine+processing example
  song.play();//set intro to play//mine
  translate(width/2,height/2);//draw each star//schiffman
  
  for (int i = 0; i < stars.length; i++)//schiffman
  {
    stars[i].update();// this updates each stars position
    stars[i].show();// shows each star on the canvas
  }
  
  font = loadFont("GillSansMT-ExtraCondensedBold-48.vlw");//setting font type similar to font of show
  textFont(font);//placing font ,this whole segment is mine.
  textAlign(CENTER, CENTER);// setting  text in the centre,//mine
  //textSize(200 * (frameRate / 360));// setting size,//mine
  text("DOCTOR\nWHO", 0, 0);  // and characters//mine
  }
  void mousePressed () { // closes program with a  click of  mouse.//mine
  exit(); 
 }
  