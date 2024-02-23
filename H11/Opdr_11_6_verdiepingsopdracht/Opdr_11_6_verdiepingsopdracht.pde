int ZoekGetal = 3;
int HoevaakGetalVoorkomt = 0;
int[] MijnArray = {10, 5, 55, 20, 34, 22, 34, 44, 3, 100, 3, 77, 4, 3, 95, 6, 9, 3, 15};

void setup() {
  for (int i = 0; i<MijnArray.length; i++) {
    if (MijnArray[i] == ZoekGetal) {
      HoevaakGetalVoorkomt++;
    }
  }
  println("Het getal 3 komt"+ " "+HoevaakGetalVoorkomt+ " "+"keer voor");
}
