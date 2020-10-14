class Star // creating class star
{
  float x;  // variables x and y represent each the x and y of each star.//schiffman
  float y;
  float z; //z is used in a formula to change the stars location//schiffman
  
  float fz; // fz stores the value of z from the frame before.//modified schiffman
  
  Star() 
  {
    x = random(-width, width); // 
    y = random(-height, height);
    z =  random(width);//valuables assigned to all variables //shiffman code
    fz = z;
  }
 
 void update()
 {
   z = z - speed;//schiffman code
   
   if (z < 1)
   {
     z = width;// here I am setting the previous location of z in the same location as z
     x = random(-width, width);  // 
     y = random(-height, height);
     fz = z;    
   }
}
void show()
{
  fill(255);
  
  noStroke();
  float dx = map(x / z, 0, 1, 0, width / 2);//new star positions move faster at each frame
  float dy = map (y / z, 0, 1, 0, height / 2);//schiffman code modified
  
  float r = map(z, 0, width, 14, 0);//modified schiffman code with my own specifications
  fill(random(255), random(255), random(255));//stars centres change colour randomly//my code
  ellipse(dx, dy, r, r);
  
  
  ellipse(1000-(frameRate/360),150,50,50);
  fill (#F4F755);//seems to set color of font in the word dr who set in the centre
    
  float fx = map(x / fz, 0, 1, 0, width / 2);//schiffman 
  float fy = map (y / fz, 0, 1, 0, height / 2);//schiffman with my modification
  fz = z;//mine and schiffman mixed
  
  stroke(#FCF7F7);//line of stars font 
  line(fx, fy, dx, dy);//maps line to follow ellipses

  
 } 
}