size(800,400);
background(255,255,255);

//Line stukje codering
line(10,10,210,10);
fill(0,0,0);
text("Lijn",85,25);

//Rechthoek
noFill();
rect(10,30,200,100);
text("Rechthoek",80,145);


//gevulde rechthoek met ovaal
fill(255,0,255);
rect(230,30,200,100);
ellipse(330,80,200,100);

fill(0,0,0);
text("Gevulde rechthoek met ovaal",260,150);

//taartpunt met ovaal eromheen
noFill();
ellipse(550,70,220,110);
fill(255,0,255);
arc(550,70,220,110,1.75*PI,2*PI);
fill(0,0,0);
text("Gevulde rechthoek met ovaal",475,150);

//afgeronde rechthoeken
noFill();
arc(20,175,20,20,3,1.5*PI);
arc(200,175,20,20,4.5,2*PI);
line(20,165,199,165);
line(10,175,10,250);

arc(20,251,20,20,1.5,1*PI);
arc(200,250,20,20,0,0.5*PI);
line(210,175,210,250);
line(20,260,199,260);

fill(0,0,0);
text("Afgeronde rechthoek",55,275);

//Gevulde ovaal
fill(255,0,255);
ellipse(330,210,200,100);

fill(0,0,0);
text("Gevulde ovaal",285,275);

//Cirkel
noFill();
ellipse(550,210,100,100);
fill(0,0,0);
text("Cirkel",535,275);
