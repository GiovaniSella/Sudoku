tabela tab = new tabela();
int press = 0;
void setup() {
  size(displayWidth, displayHeight);
  background(100);
  textAlign(CENTER);
  rectMode(CENTER);
  
}
void draw() {
  
  if(press >= 1){
    tab.resolver();
  }
  
  desenharlayout();
  tab.desenhartabela();
}

void mousePressed(){
  int x, y;
  if(mouseY > height/2+width/2 & mouseX > width/2){
    tab.zerartabela();
  }
  if(mouseY > height/2+width/2 & mouseX < width/2){
    press = 1;
  }
  if(mouseY <= height/5){
    tab.exemplo(1);
  }
  
  for (x = 1; x <=9; x++){
    for (y = 1; y <=9; y++){
      if(mouseY > (((width*0.9)/9)*(5.2+y)) - ((width*0.9)/9-6)/2 && mouseY < (((width*0.9)/9)*(5.2+y))+ ((width*0.9)/9-6)/2){
        if(mouseX > (((width*0.9)/9)*(x)) - ((width*0.9)/9-6)/2 && mouseX < (((width*0.9)/9)*(x))+((width*0.9)/9-6)/2){
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
  rect(width/4, height/5*4, 350, 70);
  textSize(40);
  fill(200);
  text("RESOLVER",width/4,  height/5*4);
  fill(40);
  rect(width/4*3,  height/5*4, 350, 70);
  fill(200);
  text("ZERAR TABELA",width/4*3,  height/5*4);
  fill(40);
  rect(width/2, height/5, 400, 70);
  fill(200);
  text("SUDOKU EXEMPLO",width/2, height/5);
}
