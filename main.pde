Bibliotek Hjoerring = new Bibliotek("Hjørring Bibliotek");

Bog bog1 = new Bog("Mazerunner", "James_Dashner", "SciFi");
Bog bog2 = new Bog("Pippi_Langstrømpe", "Astrid_Lindgren", "Fiction");
Bruger bruger1 = new Bruger("Philip", "007");
Bruger bruger2 = new Bruger("Sylvester", "666"); 


void setup(){
  fullScreen();
  tegnBog(width/29,height/20);
  Hjoerring.tilfojBog(bog1);
  Hjoerring.tilfojBog(bog2);
  Hjoerring.registrerBruger(bruger1);
  Hjoerring.registrerBruger(bruger2);
  print(Hjoerring.searchBog("Nonfiction").getTitel());
}

void draw(){
  
}
