
class Laan {
  private Bog bog;
  private Bruger bruger;
  private String laanDato;
  private boolean aktivtLaan;
  Laan(Bog tempbog, Bruger tempbruger) {
    bog=tempbog;
    bruger=tempbruger;
    laanDato=day()+"-"+month()+"-"+year();
    aktivtLaan=true;
  }
  Bog getBog() {
    return bog;
  }
  Bruger getBruger() {
    return bruger;
  }
  String getLaanDato() {
    return laanDato;
  }
  void afleverBog() {
    aktivtLaan=false;
  }
  boolean erAktivtLaan() {
    return aktivtLaan;
  }
  void VisLaanInfo() {
    println("Forfatter: " + bog.getForfatter() + " Titel: " + bog.getTitel());
    println("BrugerId: " + bruger.getBrugerId() + " navn: " + bruger.getNavn());
    println("aktivt lån: " + aktivtLaan + " Låndato: "+ laanDato);
  }
}
