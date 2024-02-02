int gewicht = 110;
float lengte_cm = 180;
float lengte_meter = lengte_cm/100;
float bmi = gewicht/(lengte_meter*lengte_meter);
String tekst = "Met een gewicht van"+" "+gewicht+" "+"KG"+" "+"en een lengte van"+" "+int(lengte_cm)+" "+"cm"+" "+"is jouw BMI:"+" "+round(bmi);

println(tekst);
