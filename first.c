#include <stdio.h>




int main() {
    int matrix[10][10],row,col,i,j;
    printf("Spiral traversal of a Matrix\n");
    printf("Enter size of the row : ");
    scanf("%d",&row);
    printf("Enter size of the column : ");
    scanf("%d",&col);
    printf("Enter the matrix elements : \n");
    for(i=0;i<row;i++){
      for(j=0;j<col;j++){
        scanf("%d",&matrix[i][j]);
      }
    }
    printf("Matrix elements are : \n");
    for(i=0;i<row;i++){
      for(j=0;j<col;j++){
        printf("%2d ",matrix[i][j]);
      }
      printf("\n");
    }
    
    printf("Spiral traversal : \n");
    int top=0,left = 0, right = col-1,bottom = row-1;
  while(left<=right&&top<=bottom){
    for(i=left;i<=right;i++){
      printf("%d ",matrix[top][i]);
    }
    top++;
    for(i=top;i<=bottom;i++){
      printf("%d ",matrix[i][right]);
    }
    right--;
    if(top<=bottom){
      for(i=right;i>=left;i--){
        printf("%d ",matrix[bottom][i]);
      }
      bottom--;
    }
    if(left<=right){
      for(i=bottom;i>=top;i--){
        printf("%d ",matrix[i][left]);
      }
      left++;
    }
    }
    printf("\n");
    return 0;
}
