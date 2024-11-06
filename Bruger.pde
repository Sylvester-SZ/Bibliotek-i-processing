
class Bruger {
  private String navn, brugerId;
  Bruger(String tempnavn, String tempbrugerId) {
    navn=tempnavn;
    brugerId=tempbrugerId;
  }
  String getNavn() {
    return navn;
  }
  String getBrugerId() {
    return brugerId;
  }
}
