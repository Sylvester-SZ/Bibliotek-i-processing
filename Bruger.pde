class bruger {
  private String navn;
  private String brugerID;

  bruger(String tempnavn, String tempbrugerID) {
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
