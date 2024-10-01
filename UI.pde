import controlP5.*;
int xbog;
int ybog;

void tegnBog(int xbog,int ybog){
  //xbog=100;
  //ybog=100;
  rect(xbog,ybog,height/6,width/6);
  print(bog1.getTitel());
  fill(0,0,0);
  textSize(25);
  textAlign(CENTER);
  text(bog1.getTitel(),xbog+height/12,ybog+width/32);
}

void visBibliotekNavn(){
 
  
}

void listeBogSlider(){
  
  
  //på siden nedenunder er en introduktion til hvordan man opretter og bruger sliders i controlP5
  //https://www.sojamo.de/libraries/controlP5/examples/controllers/ControlP5slider/ControlP5slider.pde
  
}
