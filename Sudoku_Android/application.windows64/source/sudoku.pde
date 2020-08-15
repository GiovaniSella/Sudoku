tabela tab = new tabela();
void setup() {
  size(800, 800);
  background(100);
  textAlign(CENTER);
  rectMode(CENTER);
  
}
void draw() {

  int na = 1, qa;
  for(na = 1; na <=9; na++){
    for(qa = 1; qa <= 9; qa++){
      if(tab.checarquad(na, qa) ==1){
          tab.checarlinha(na, qa);
          tab.checarcoluna(na, qa);
          tab.tirarusado(qa);
          tab.mudanca(na, qa);
          tab.checkpossibilidades(qa);
      }
    }
  }
  tab.limpar();

  tab.desenhartabela();
  


//  noLoop();
}

/*
    na = 2;
    qa = 2;
//    for(qa = 1; qa <= 9; qa++){
      if(tab.checarquad(na, qa) ==1){
          tab.checarlinha(na, qa);
          tab.checarcoluna(na, qa);
          tab.tirarusado(qa);
          tab.printarteste();
          tab.mudanca(na, qa);
      }
      tab.printarteste();
//    }
*/
