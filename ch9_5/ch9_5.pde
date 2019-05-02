/* Chapter-9-5
   Rewrite the following in an object-oriented fashion with a Snake 
   class (using separate tabs).

   Can you make snakes with slightly different looks? Some options:
     * different shapes
     * different colors
     * different sizes
  
   Then use an array to make a second snake appear.
*/

int[] xpos = new int[50];
int[] ypos = new int[50];


void setup() {
  size(400,200);
  // Initialize
  for (int i = 0; i < xpos.length; i++){
   xpos[i] = 0;
   ypos[i] = 0;
  }
}

void draw() {
  background(255);
  
  // Shift Array Values
  for (int i = 0; i < xpos.length - 1; i++){
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }
  
  // New location
   xpos[xpos.length - 1] = mouseX;
   ypos[ypos.length - 1] = mouseY;   

  // Draw Everything
  for (int i = 0; i < xpos.length - 1; i++){
    noStroke();
    fill(255 - i*5);
    ellipse(xpos[i], ypos[i], i, i);
  }
}
