int Antwoord = 0;
int getalEen = 0;
int getalTwee = 1;

for (int i = 0; i<10; i++) {
  Antwoord = getalEen+getalTwee;
  println(Antwoord);
  getalEen = getalTwee;
  getalTwee = Antwoord;
}
