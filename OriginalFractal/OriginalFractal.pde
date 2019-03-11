void setup(){
  background(0);
  size(1000,800);
  
}
float angle;
void draw()
{
  angle += 0.05;
  myFractal((float)(180 * Math.cos(angle)), (float)(180 * Math.sin(angle)), 360, (float)(180 * Math.sin(angle)));

  myFractal((float)(180 * Math.cos(angle)), (float)(180 * Math.sin(angle)), 360, (float)(180 * Math.sin(angle)));

  myFractal(-(float)(180 * Math.cos(angle)), (float)(180 * Math.sin(angle)), 360, (float)(180 * Math.sin(angle)));

  myFractal(-(float)(180 * Math.cos(angle)), (float)(180 * Math.sin(angle)), 360, (float)(180 * Math.sin(angle)));

}

public void myFractal(float x, float y, float size, float angle){
  stroke(random(255), random(255), random(255));
  strokeWeight(5);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(x, y, size*2, size*2);
  popMatrix();

  if (size > 3){
    size -= 2;
    myFractal(x- size/2, y- size/2, size*.65, angle -90);
    myFractal(x+ size/2, y+ size/2, size*.65, angle + 90);
  }
  
}
