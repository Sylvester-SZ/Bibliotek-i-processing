String navn;

class Bibliotek {
  ArrayList<Bog> bøger = new ArrayList<Bog>();
  ArrayList<Bruger> brugere = new ArrayList<Bruger>();
  ArrayList<Laan> udlaan = new ArrayList<Laan>();
  private String bibnavn; 
  
  Bibliotek(String navn){
    this.bibnavn = navn;
  }
  
  String getBibNavn(){
    return bibnavn;
  }
  
  void laanBog(Bruger brugere, Bog Bøger) {
  }
  void afleverBog(Bog bog) {
    bog.udlaant = false;
  }
  void tilfojBog(Bog bogen) {
    bøger.add(bogen);
  }
  void registrerBruger(Bruger bruger) {
    brugere.add(bruger);
  }
  
  //Returnerer alle bøger
  ArrayList<Bog> getBøger() {
    return bøger;
  }
  
  //Søger efter bognavn og retunerer Bog objekt
  Bog searchBog(String navn) {
    // Fjern tegnsætning og gør teksten til små bogstaver
    navn = navn.toLowerCase();
    navn = navn.replaceAll("[^a-zA-Z0-9\\s]", "");
    for (Bog bogern : getBøger() ) {
      String bogtitle = bogern.getTitel();
      bogtitle = bogtitle.toLowerCase();
      bogtitle = bogtitle.replaceAll("[^a-zA-Z0-9\\s]", "");
      if (navn.equals(bogtitle)) {
        return bogern;
      }
    }
    println("Denne bog findes ikke");
    return new Bog("Ikke Tilgængelig", "", false);
  }
  
  //Overflødig
  boolean isNull(Bog bog){
    if(bog!=null){
      return false;
    }
    else{
      return true;
    }
  }
}
