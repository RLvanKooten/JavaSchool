int progress = 100;
Boolean quest1 = false;
Boolean quest2 = false;
Boolean quest3 = false;

if (progress >=30){quest1 = true;}
if (progress >=60){quest2 = true;}
if (progress == 100){quest3 = true;}

if (quest1 && quest2 && quest3){println("Je hebt de game gehaald");}
