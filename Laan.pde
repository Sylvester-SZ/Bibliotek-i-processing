class Laan{
 private Bog bog;
 private Bruger bruger;
 private String laanDato;
 private boolean AktivtLaan;
 
 Laan(Bog tempbog, Bruger tempbruger, String templaanDato, boolean tempAktivtLaan){
  bog=tempbog;
  bruger=tempbruger;
  laanDato=templaanDato;
  AktivtLaan=tempAktivtLaan;
 }
 
  Bog getBog(){
  return bog;
 }
 
 Bruger getBruger(){
   return bruger; 
 }
 
 String getLaanDato(){
  return laanDato; 
 }
 
 void afleverBog(){
 }
 
 boolean erAktivtLaan(){
  return AktivtLaan; 
 }
 
 void visLaanInfo(){ 
 }
}
