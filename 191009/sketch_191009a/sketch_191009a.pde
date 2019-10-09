size(800,700);
background(255);

// 点
point(100,100);
fill(0,0,255);

// 円
ellipse(300,300,100,100);
line(30,20,100,200);

// shikaku 1
noFill();
rect(300,300,200,50);

// shikaku 2
noStroke();
fill(255,0,0);
rect(400,100,40,40);


// sankaku
noFill();
stroke(255,0,0); // sen no iro
strokeWeight(5); // sen no haba
triangle(300,100,500,300,300,300);

// 円弧
noStroke();
fill(0,255,0);
arc(400,350,100,100,radians(0),radians(180));
