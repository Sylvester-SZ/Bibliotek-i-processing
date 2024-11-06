class Bog {
  private String titel, forfatter, katagori;
  private boolean udlaant;
  Bog(String temptitel, String tempforfatter, String tempkatagori) {
    titel=temptitel;
    forfatter=tempforfatter;
    katagori=tempkatagori;
    udlaant=false;
  }
  String getTitel() {
    return titel;
  }
  String getForfatter() {
    return forfatter;
  }
  String getKatagori(){
    return katagori;
  }
  void laanBog() {
    udlaant=true;
  }
  void afleverBog() {
    udlaant=false;
  }
}
