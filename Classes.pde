class Bog{
  private String titel;
  private String forfatter;
  private boolean udlaant;
  
  
  Bog(String temptitel, String tempforfatter, boolean tempudlaant){
    titel=temptitel;
    forfatter=tempforfatter;
    udlaant=tempudlaant;
     
  }
  
  String getTitel(){
    return titel;
    
  }
  
  
  String getForfatter(){
    return forfatter;
    
  }
  
  void laanBog(){
    
  }
  
  void afleverBog(){
  
  }
}
