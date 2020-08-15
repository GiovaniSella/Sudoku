//Cria o objeto da classe Tabela
tabela tab = new tabela();


int press = 0;

//os codigos do void setup acontecem só uma vez
void setup() { 
  size(800, 800);
  background(100);
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw() {
  desenharlayout();
  tab.desenhartabela();
}

void mousePressed(){
  int x, y;
  if(mouseY > 700 & mouseX > 410){
    tab.zerartabela();
  }
  if(mouseY > 700 & mouseX < 290){
    tab.resolver();
  }
  if(mouseY <= 100){
    tab.exemplo(1);
  }
  
  for (x = 1; x <=9; x++){
    for (y = 1; y <=9; y++){
      if(mouseY >((width*0.7)/9)*(1.5+y) - 27.5 && mouseY < (((width*0.7)/9)*(1.5+y)) + 27.5 ){
        if(mouseX >((width*0.7)/9)*(1.5+x) - 27.5 && mouseX < (((width*0.7)/9)*(1.5+x)) + 27.5 ){
          tab.alterartabela(x, y);
          
        }
      }
    }
  }
  delay(100);
}

void desenharlayout(){
  fill(40);
  noStroke();
  rect(width/4, 740, 350, 70);
  textSize(40);
  fill(200);
  text("RESOLVER",width/4, 755);
  fill(40);
  rect(width/4*3, 740, 350, 70);
  fill(200);
  text("ZERAR TABELA",width/4*3, 755);
  fill(40);
  rect(width/2, 50, 400, 70);
  fill(200);
  text("SUDOKU EXEMPLO",width/2, 60);
}
