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
  
  void laanBog(Bruger person, Bog book) {
    Laan laan = new Laan(book, person);
    udlaan.add(laan);
    println(person.getNavn()+" har lånt: "+book.getTitel());

  }
  
void afleverBog(Bog book) {
    Laan aktivtLaan=null;
    for (Laan laan : udlaan) {
      if (laan.getBog().equals(book)&&laan.erAktivtLaan()) {
        aktivtLaan=laan;
        break;
      }
    }
    if (aktivtLaan!=null) {
      aktivtLaan.afleverBog();
      udlaan.remove(aktivtLaan);
      println(aktivtLaan.getBruger().getNavn()+" har afleveret: " + aktivtLaan.getBog().getTitel());

    } else {
      println("Ingen aktive lån fundet for bogen, " + book.getTitel()+ ", " + book.getForfatter());

    }
  }
  
  void tilfojBog(Bog book) {
    bøger.add(book);
    println("tilføjet: "+book.getTitel()+", "+book.getForfatter());

  }
  
  void registrerBruger(Bruger person) {
    brugere.add(person);
    println("tilføjet: "+person.getNavn()+", "+person.getBrugerId());

  }
  
  //Returnerer alle bøger
  ArrayList<Bog> getBøger() {
    return bøger;
  }
  
  //Søger efter bognavn/forfatter/katagori og retunerer Bog objekt
  Bog searchBog(String navn) {
    // Fjern tegnsætning og gør teksten til små bogstaver
    navn = navn.toLowerCase();
    navn = navn.replaceAll("[^a-zA-Z0-9\\s]", "");
    for (Bog bogern : getBøger() ) {
      String bogtitle = bogern.getTitel();
      bogtitle = bogtitle.toLowerCase();
      bogtitle = bogtitle.replaceAll("[^a-zA-Z0-9\\s]", "");
      String bogauthor = bogern.getForfatter();
      bogauthor = bogauthor.toLowerCase();
      bogauthor = bogauthor.replaceAll("[^a-zA-Z0-9\\s]", "");
      String bogcata = bogern.getKatagori();
      bogcata = bogcata.toLowerCase();
      bogcata = bogcata.replaceAll("[^a-zA-Z0-9\\s]", "");
      if (navn.equals(bogtitle)) {
        return bogern;
      }
      else if(navn.equals(bogauthor)) {
        return bogern;
      }
      else if(navn.equals(bogcata)) {
        return bogern;
      }
    }
    println("Denne bog findes ikke");
    return new Bog("Ikke Tilgængelig", "","");
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
