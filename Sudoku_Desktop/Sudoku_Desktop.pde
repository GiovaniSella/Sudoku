//Cria o objeto da classe Tabela
tabela tab = new tabela();


int press = 0;

//os codigos do void setup acontecem só uma vez
void setup() { 
  size(800, 800);
  background(73, 139, 166);
  textAlign(CENTER);
  rectMode(CENTER);
  tab.checkCorTexto();
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
    tab.checkCorTexto();
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
  fill(242, 219, 174);
  noStroke();
  rect(width/4, 740, 350, 40);
  rect(width/4, 740, 310, 80);
  ellipse(width/4+310/2, 740-40/2, 40, 40);
  ellipse(width/4+310/2, 740+40/2, 40, 40);
  ellipse(width/4-310/2, 740-40/2, 40, 40);
  ellipse(width/4-310/2, 740+40/2, 40, 40);
  textSize(40);
  fill(38, 101, 140);
  text("RESOLVER",width/4, 755);
  
  fill(242, 219, 174);
  rect(width/4*3, 740, 350, 40);
  rect(width/4*3, 740, 310, 80);
  ellipse(width/4*3+310/2, 740+40/2, 40, 40);
  ellipse(width/4*3+310/2, 740-40/2, 40, 40);
  ellipse(width/4*3-310/2, 740+40/2, 40, 40);
  ellipse(width/4*3-310/2, 740-40/2, 40, 40);
  fill(38, 101, 140);
  text("ZERAR TABELA",width/4*3, 755);
  
  fill(242, 219, 174);
  rect(width/2, 50, 350, 40);
  rect(width/2, 50, 310, 80);
  ellipse(width/2+310/2, 50+40/2, 40, 40);
  ellipse(width/2+310/2, 50-40/2, 40, 40);
  ellipse(width/2-310/2, 50+40/2, 40, 40);
  ellipse(width/2-310/2, 50-40/2, 40, 40);
  fill(38, 101, 140);
  textSize(35);
  text("SUDOKU EXEMPLO",width/2, 60);
}
