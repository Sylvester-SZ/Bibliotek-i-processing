void setup(){
  Bibliotek Hjoerring = new Bibliotek();
  
  Bog bog1 = new Bog("Mazerunner", "James_Dashner", false);
  Bog bog2 = new Bog("Pippi_Langstrømpe", "Astrid_Lindgren", false);
  Bruger bruger1 = new Bruger("Philip", "007");
  Bruger bruger2 = new Bruger("Sylvester", "666");
  
  Hjoerring.tilfojBog(bog1);
}

void draw(){
  print(bøger);
}
