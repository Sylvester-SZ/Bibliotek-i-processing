class Bog {
  String titel;
  String forfatter;
  boolean udlaant;
  
  Bog(String temptitel, String tempforfatter, boolean tempudlaant) {

    titel=temptitel;
    forfatter=tempforfatter;
    udlaant=tempudlaant;
  }

  String getTitel() {
    return titel;
  }
  
  String getForfatter() {
    return forfatter;
  }

  void laanBog() {
    udlaant=true;
  }


  void afleverBog() {
    udlaant=false;
  }
}
