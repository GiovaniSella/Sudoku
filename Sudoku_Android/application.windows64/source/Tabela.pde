class tabela{
  private
  int[][] tab =
  {{0,0,0,0,  0,0,0,  0,0,0,},
  {0,
         3,0,4,  0,0,2,  0,0,8,},
  {0,    0,1,0,  0,0,0,  0,2,0,},
  {0,    0,0,9,  0,0,0,  6,0,1,},
  {0,    2,0,0,  9,0,6,  0,0,0,},
  {0,    0,0,0,  0,5,0,  0,0,0,},
  {0,    0,0,0,  7,0,4,  0,0,2,},
  {0,    8,0,3,  0,0,0,  5,0,0,},
  {0,    0,7,0,  0,0,0,  0,3,0,},
  {0,    1,0,0,  5,0,0,  9,0,4,}};
  
  int[][] tabaux =
  {{0,0,0,0,  0,0,0,  0,0,0,},
  {0,
         0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,},
  {0,    0,0,0,  0,0,0,  0,0,0,}};
  
  int[][] check =
  {{0,0,0,0, },
  {0,
         0,0,0, },
  {0,    0,0,0, },
  {0,    0,0,0, }};
  
  int[][] checkp =
  {{0,0,0,0, },
  {0,
         0,0,0, },
  {0,    0,0,0, },
  {0,    0,0,0, }};
  

  void forcc(int y, int natual){
    int aux, aux2, aux3 = 0;
    for(aux2 = y; aux2 < y+3; aux2++){
      aux3++;
      for(aux = 1;aux <=9; aux++){
        if (tab[aux][aux2] == natual){
          check[aux3][1] = 1;
          check[aux3][2] = 1;
          check[aux3][3] = 1;
        }
      }
    }

  }
  void forcl(int y, int natual){
    int aux, aux2, aux3 = 0;
    for(aux2 = y; aux2 < y+3; aux2++){
      aux3++;
      for(aux = 1;aux <=9; aux++){
        if (tab[aux2][aux] == natual){
          check[1][aux3] = 1;
          check[2][aux3] = 1;
          check[3][aux3] = 1;
        }
      }
    }

  }
  
  public
  
  void checkpossibilidades(int qa){
    
    int xs = 0, ys = 0, x, y;
    
    switch (qa){
      case 1:  xs = 0; ys = 0;  break;
      case 2:  xs = 0; ys = 3;  break;
      case 3:  xs = 0; ys = 6;  break;
      case 4:  xs = 3; ys = 0;  break;
      case 5:  xs = 3; ys = 3;  break;
      case 6:  xs = 3; ys = 6;  break;
      case 7:  xs = 6; ys = 0;  break;
      case 8:  xs = 6; ys = 3;  break;
      case 9:  xs = 6; ys = 6;  break;
    }
    
    for(x = 1; x <= 3; x++){
      for(y = 1; y <= 3; y++){
        if(check[y][x] == 0){
          tabaux[x+xs][y+ys]++;
        }
      }
    }
    
    background(100);
    for(y = 1; y <= 9 ;y++){
      for(x = 1; x <= 9 ;x++){
  
        fill(200);
        noStroke();
      //  rect((((20*0.7)/9)*(1.5+y)), (((20*0.7)/9)*(1.5+x)), 55, 55);
        if(tabaux[x][y] != 0){
          fill(20);
          textSize(10);
          text(tabaux[x][y], (((150*0.7)/9)*(1+y)), (((150*0.7)/9)*(1+x)));
        }
      }
    }
  }
  void limpar(){
    int na = 1, qa;
    for(na = 1; na <=9; na++){
      for(qa = 1; qa <= 9; qa++){
        tabaux[na][qa] = 0;
      }
    }
  }
  
  void tirarusado(int qa){
    int xs = 0, ys = 0, x, y;
    
    switch (qa){
      case 1:  xs = 0; ys = 0;  break;
      case 2:  xs = 0; ys = 3;  break;
      case 3:  xs = 0; ys = 6;  break;
      case 4:  xs = 3; ys = 0;  break;
      case 5:  xs = 3; ys = 3;  break;
      case 6:  xs = 3; ys = 6;  break;
      case 7:  xs = 6; ys = 0;  break;
      case 8:  xs = 6; ys = 3;  break;
      case 9:  xs = 6; ys = 6;  break;
    }
    
    for(x = 1; x <= 3; x++){
      for(y = 1; y <= 3; y++){
        if(tab[x+xs][y+ys] != 0){
          check[y][x] = 1;
        }
      }
    }
  }
  
  void mudanca(int natual, int quadatual){
    int x, y, xs = 0, ys = 0, controle = 0;
    
    switch (quadatual){
      case 1:  xs = 0; ys = 0;  break;
      case 2:  xs = 3; ys = 0;  break;
      case 3:  xs = 6; ys = 0;  break;
      case 4:  xs = 0; ys = 3;  break;
      case 5:  xs = 3; ys = 3;  break;
      case 6:  xs = 6; ys = 3;  break;
      case 7:  xs = 0; ys = 6;  break;
      case 8:  xs = 3; ys = 6;  break;
      case 9:  xs = 6; ys = 6;  break;
    }
    
    for(y = 1; y <= 3; y++){
      for(x = 1; x <= 3; x++){
        controle += check[x][y];
      }
    }
    if (controle == 8){
      for(y = 1; y <= 3; y++){
        for(x = 1; x <= 3; x++){
          if (check[x][y] == 0){
            
            tab[y+ys][x+xs] = natual;
          }
        }
      }
    }
    for(y = 1; y <= 3; y++){
      for(x = 1; x <= 3; x++){
        check[x][y] = 0;
      }
    }
  }

  
  void checarlinha(int natual, int quadatual){
    switch (quadatual){
      case 1:  forcl(1, natual);  break;
      case 2:  forcl(1, natual);  break;
      case 3:  forcl(1, natual);  break;
      case 4:  forcl(4, natual);  break;
      case 5:  forcl(4, natual);  break;
      case 6:  forcl(4, natual);  break;
      case 7:  forcl(7, natual);  break;
      case 8:  forcl(7, natual);  break;
      case 9:  forcl(7, natual);  break;
    }
  }
  
  
  void checarcoluna(int natual, int quadatual){
    switch (quadatual){
      case 1:  forcc(1, natual);  break;
      case 2:  forcc(4, natual);  break;
      case 3:  forcc(7, natual);  break;
      case 4:  forcc(1, natual);  break;
      case 5:  forcc(4, natual);  break;
      case 6:  forcc(7, natual);  break;
      case 7:  forcc(1, natual);  break;
      case 8:  forcc(4, natual);  break;
      case 9:  forcc(7, natual);  break;
    }

  }
  
  
  int checarquad(int natual, int quadatual){
    int x = 0, y = 0;
    switch (quadatual){
      case 1:x = 1; y = 1  ;  break;
      case 2:x = 4; y = 1  ;  break;
      case 3:x = 7; y = 1  ;  break;
      case 4:x = 1; y = 4  ;  break;
      case 5:x = 4; y = 4  ;  break;
      case 6:x = 7; y = 4  ;  break;
      case 7:x = 1; y = 7  ;  break;
      case 8:x = 4; y = 7  ;  break;
      case 9:x = 7; y = 7  ;  break;
    }   
    int aux, aux2, aux3 = 0;
    for(aux = y; aux< y+3; aux++){
      for(aux2 = x; aux2 < x+3; aux2++){
        if(tab[aux][aux2] == natual){
          aux3 = 1;
        }
      }      
    }
    if (aux3 == 1){
      return 0;
    }else{return 1;}
  }
  
  
  
    
  void desenhartabela(){
    for(byte y = 1; y <= 9 ;y++){
      for(byte x = 1; x <= 9 ;x++){
  
        fill(200);
        noStroke();
        rect((((width*0.7)/9)*(1.5+y)), (((height*0.7)/9)*(1.5+x)), 55, 55);
        if(tab[x][y] != 0){
          fill(20);
          textSize(40);
          text(tab[x][y], (((width*0.7)/9)*(1.5+y)), (((height*0.7)/9)*(1.75+x)));
        }
  
        if (x == 3 || x == 6){
          stroke(50);
          strokeWeight(5);
          line((((width*0.7)/9)*(2+x)), 130, (((width*0.7)/9)*(2+x)), 680);
        }
        if (y == 3 || y == 6){
          stroke(50);
          strokeWeight(5);
          line(130,(((height*0.7)/9)*(2+y)), 680, (((height*0.7)/9)*(2+y)));
        }
      }
    }
  }  
  void printarteste(){
    textSize(10);
    int aux, aux2;
    for(aux = 1; aux<= 3; aux++){
      for(aux2 = 1; aux2 <= 3; aux2++){
        text(check[aux][aux2], 700+(20*aux), 700+(20*aux2));
      }     
    }
  }
}
