void setup(){
  background(0);
  size(1000,800);
  
}
float sourceAngle;
void draw()
{
  sourceAngle += 0.05;
  //myFractal(width/2, 500, 7, 5);
  //fill(0);
  myFractal((float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), 360, (float)(180 * Math.sin(sourceAngle)));
  //fill(0);
  myFractal((float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), 360, (float)(180 * Math.sin(sourceAngle)));
  //fill(0);
  myFractal(-(float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), 360, (float)(180 * Math.sin(sourceAngle)));
  //fill(0);
  myFractal(-(float)(180 * Math.cos(sourceAngle)), (float)(180 * Math.sin(sourceAngle)), 360, (float)(180 * Math.sin(sourceAngle)));

}

public void myFractal(float x, float y, float size, float angle){
  stroke(random(255), random(255), random(255));
  //noLoop();
  strokeWeight(5);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  //fill(0);
  rect(x, y, size*2, size*2);
  popMatrix();

  if (size > 3){
    size -= 2;

    myFractal(x- size/2, y- size/2, size*.65, angle -90);
    myFractal(x+ size/2, y+ size/2, size*.65, angle + 90);
  }
  
}
