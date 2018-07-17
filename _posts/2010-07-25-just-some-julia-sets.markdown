---
author: phewner
comments: true
date: 2010-07-25 18:37:14+00:00
layout: post
link: http://hewner.com/2010/07/25/just-some-julia-sets/
slug: just-some-julia-sets
title: Just Some Julia Sets
wordpress_id: 237
categories:
- Programming Stuff
---

So one of the neat side things I learned at GHP was how the Mandelbrot Set works.  Somehow I had the impression that the Mandelbrot Set was really complicated so I had never looked up the details.  But it is really crazy-simple, assuming you know what a complex number is.  Anyways, once I learned this, I just had to cook up my own mini-fractal generator and explore.  I didn't actually draw the Mandelbrot (yeah, now that I understand the Mandelbrot just doesn't excite me anymore): I'm drawing some julia sets which are a very close relative.

And I did it in Processing which made it extra easy and fun.  

[sourcecode language="java" collapse="true"]
class Cnum //complex number
{

    float r; //real
    float i; //imaginary
    Cnum(float r_, float i_) {
        r = r_;
        i = i_;
    }

    String irep()
    {
        return "[" + r + " + " + i + "i]";
    }

    String prep()
    {
        float theta = arg();
        float r2 = sqrt((i*i) + (r*r));
        return "[r=" + r2 + " theta=" + theta + "]";

    }

    String toString() {
        return irep();
    }

    boolean isInfinity()
    {
        return r == Float.POSITIVE_INFINITY;
    }

    boolean isZero()
    {
        return r == 0 && i == 0;
    }

    Cnum conj() 
    {
        return new Cnum(r, i*-1);
    }

    Cnum neg()
    {
        return new Cnum(-r,-i);
    }


    float arg()
    {
	return atan2(i,r);
    }

    float abs()
    {
        return sqrt(r*r + i*i);
    }
} 	

Cnum add(Cnum a, Cnum b)
{
    return new Cnum(a.r + b.r, a.i + b.i);
}
Cnum sub(Cnum a, Cnum b)
{
    return new Cnum(a.r - b.r, a.i - b.i);
}

Cnum mul(Cnum a, Cnum b)
{
     return new Cnum(a.r*b.r - a.i*b.i, a.i*b.r + a.r*b.i);
}

int WIDTH = 500;
int HEIGHT = 500;
boolean changeOnMove = true;    


void plot(Cnum a)
{
    float xPercentage = (a.r - upperLeft.r)/(lowerRight.r - upperLeft.r);
    float yPercentage = (a.i - lowerRight.i)/(upperLeft.i - lowerRight.i);
    int x = round(xPercentage*WIDTH);
    int y = round((1 - yPercentage)*HEIGHT);
    point(x, y);
}

Cnum convert(int x, int y)
{
    float xPercentage = x/float(WIDTH);
    float yPercentage = y/float(HEIGHT);
    return new Cnum((lowerRight.r - upperLeft.r)*xPercentage + upperLeft.r,
		    (upperLeft.i - lowerRight.i)*(1 - yPercentage) + lowerRight.i);
}

Cnum upperLeft, lowerRight;


PFont fontA;

void setup() {
    upperLeft = new Cnum(-2, 2);
    lowerRight = new Cnum(2, -2);
    size(WIDTH, HEIGHT);
    stroke(226);

    fill(226);

  fontA = loadFont("SansSerif.plain-12.vlw");

  // Set the font and its size (in units of pixels)
  textFont(fontA, 12);
  oldMouse = new Cnum(0,0);

}
	    

void keyPressed() {
    if (key == 'q')
	exit();
    if (key == 's') 
	save("output.png");
    if (key == ' ') {
	changeOnMove = !(changeOnMove);
	draggedX = 0;
	draggedY = 0;
    }
	
}

Cnum oldMouse;
int maxIter = 20;
void draw() {
    Cnum mouse; 
    background(0);

    if(changeOnMove) {
	mouse = convert(mouseX, mouseY);
	if(mouse.r == oldMouse.r && mouse.i == oldMouse.i) {
	    if(maxIter < 1000)
		maxIter = maxIter + 20;
	    else 
		return;
	} else {
	    maxIter = 5;
	    oldMouse = mouse;
	}
    } else {
	mouse = oldMouse;
    }
    for(int q = 0; q < WIDTH; q++)
	for(int j = 0; j < HEIGHT; j++) {
	    Cnum orig = convert(q,j);
	    //Cnum acc = add(mul(orig,orig), mouse) ;
	    Cnum acc = orig ;
	    //Cnum acc = add(orig, mouse);
	    for(int i = 0; i < maxIter; i++) {
		acc = add(mul(mul(acc,acc),acc), mouse) ;
		if(acc.abs() > 2){
		    int strokeColor = 255 - i*5;
		    if (strokeColor < 0 ) strokeColor = 0;
		    stroke(strokeColor);		    
		    plot(orig);
		    break;
		} 
	    }
	}
    fill(0,0,222);		    
    text("z^2 + cl c=" + mouse.r + " + " + mouse.i + "i", 30, 60);
    if(draggedX != 0 || draggedY != 0) {
	stroke(0,0,222);
	noFill();
	int max = max(mouseX - draggedX, mouseY - draggedY);
	rect(draggedX, draggedY, max, max);
    }
 
}

int draggedX = 0;
int draggedY = 0;

void mousePressed() 
{
    if(!changeOnMove) {
	draggedX = mouseX;
	draggedY = mouseY;
    }
}

void mouseReleased()
{
    if(!changeOnMove && draggedX != 0 && draggedY != 0) {

	int temp;
	if(mouseX < draggedX) {
	    temp = mouseX;
	    mouseX = draggedX;
	    draggedX = temp;
	}
	if(mouseY < draggedY) {
	    temp = mouseY;
	    mouseY = draggedY ;
	    draggedY = temp;
	}
	int max = max (mouseX - draggedX, mouseY - draggedY);


	Cnum lowerRightNew = convert(draggedX + max, draggedY + max);
	Cnum upperLeftNew = convert(draggedX, draggedY);

	upperLeft = upperLeftNew;
	lowerRight = lowerRightNew;
	draggedX = 0;
	draggedY = 0;
    }

}
[/sourcecode]

[gallery link="file" columns="5"]
