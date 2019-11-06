import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_160927a extends PApplet {

float maxDistance;

public void setup() {
    
    noStroke();
    fill(0);
    maxDistance = dist(0,0,width,height);
    println("maxDistance: "+maxDistance);
}

public void draw() {
    background(204);

    for (int i = 0; i < width; i+=20) {
        for (int j = 0; j < height; j+=20) {
            float mouseDist = dist(mouseX, mouseY, i, j);
            float diameter = (mouseDist / maxDistance) * 66.0f;
            ellipse(i, j, diameter, diameter);
        }
    }
}

// float x = dist(0,0,50,50);
// println("x: "+x);
  public void settings() {  size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_160927a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
