class Bruger {
  private String navn;
  private String brugerID;

  Bruger(String tempnavn, String tempbrugerID) {
    navn=tempnavn;
    brugerID=tempbrugerID;
  }

  String getNavn() {
    return navn;
  }

  String getBrugerID() {
    return brugerID;
  }
}
