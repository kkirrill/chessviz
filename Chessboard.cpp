#include<stdio.h>
void doska(){
  char a[9][9];
  a[0][0]='1';
  a[1][0]='2';
  a[2][0]='3';
  a[3][0]='4';
  a[4][0]='5';
  a[5][0]='6';
  a[6][0]='7';
  a[7][0]='8';
  a[8][1]='a';
  a[8][2]='b';
  a[8][3]='c';
  a[8][4]='d';
  a[8][5]='e';
  a[8][6]='f';
  a[8][7]='g';
  a[8][8]='h';
  for(int j=1;j<9;j++)
    for( int i=0;i<8;i++)
      a[i][j]=' ';
  for(int j=0;j<9;j++){
    for(int i=0;i<9;i++)
      printf("%c ",a[j][i]);
    printf("\n");
  }
}
  int main(){
    doska();
  }
    
    
  
   
  
