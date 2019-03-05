void setup(){
  size(500,500);
  rectMode(CENTER);

}

public void draw()
{
  background(255);
  myFractal(width/2, height/2, 500);
}

public void myFractal(int x, int y, int size){
  fill(255);
  stroke(random(255), random(255), random(255));
  strokeWeight(4);
  rectMode(CENTER);
  
  rect(x, y, size, size);
  if (size > 3){
    size *= 0.75f;
    rotate(2);
    myFractal(x, y, size-1);
  } else{
    size =0;
  }

}

//x = 1

//while x < 400:

//    fd(50 + x)
//    rt(90.911)


//    x = x+1 
