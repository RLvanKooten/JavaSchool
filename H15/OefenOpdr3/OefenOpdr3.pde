class BankAccount {
  String rekeningnummer;
  double saldo;
  String naamEigenaar;
  
  BankAccount(String rekeningnummer, double saldo, String naamEigenaar){
    this.rekeningnummer = rekeningnummer;
    this.saldo = saldo;
    this.naamEigenaar = naamEigenaar;
    
  }
  
  void GeldOpnemen(double bedrag){
    if(bedrag > saldo){
      println("Onvoldoende saldo");
    }else{
      saldo -= bedrag;
      println("Geld opnemen gelukt");
    }
  }
  
  void GeldStorten(double bedrag){
    if(bedrag < saldo){
      println("Onvoldoende saldo");
    }else{
      saldo += bedrag;
      println("Geld storten gelukt");
    }
    
  }
  
  
  
  
}

void setup(){
  
  BankAccount bankrekening1 = new BankAccount("NL123456789", 1000.0, "John Doe");
  bankrekening1.GeldOpnemen(500);
  bankrekening1.GeldStorten(125);
  bankrekening1.GeldOpnemen(1000);
  
  
}
