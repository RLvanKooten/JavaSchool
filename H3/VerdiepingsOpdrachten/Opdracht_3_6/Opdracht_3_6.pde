size(800,400);
background(255,255,255);

//Line stukje codering
line(10,10,200,10);
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
rect(10,150,200,100);
fill(0,0,0);
text("Lijn",85,265);

//Gevulde ovaal
fill(255,0,255);
ellipse(330,210,200,100);

//Cirkel
noFill();
ellipse(550,210,100,100);
