class Solution {
  int maxSumSubmatrix(List<List<int>> matrix, int k) {
    int height = matrix.length;
    int length = matrix.first.length;
    int? max;
    //Iterate all rows, obtain array of sums
    List<List<int>> columnsSumsArrays = List.generate(height, (index) => []);
    for(int currentRow = 0; currentRow < height; currentRow++){
      for(int currentColumn = 0; currentColumn < length; currentColumn++){
        int sum = 0;
        for(int i = currentColumn; i >= 0; i--){
          sum += matrix[currentRow][i];
          if(sum == k){
            return k;
          } else if(sum < k && (max == null || sum > max)){
            max = sum;
          }
          columnsSumsArrays[currentRow].add(sum);
        }
      }
    }
    //Find sum of sum arrays to calculate all possible rectangles from columns perspective
    for(int currentColumn = 0; currentColumn < columnsSumsArrays.first.length; currentColumn++){
      for(int currentRow = 0; currentRow < height; currentRow++){
        int sum = 0;
        for(int i = currentRow; i >= 0; i--){
          sum += columnsSumsArrays[i][currentColumn];
          if(sum == k){
            return k;
          } else if(sum < k && (max == null || sum > max)){
            max = sum;
          }
        }
      }
    }
    //Iterate all columns, obtain array of sums
    List<List<int>> rowsSumsArrays = List.generate(length, (index) => []);
    for(int currentColumn = 0; currentColumn < length; currentColumn++){
      for(int currentRow = 0; currentRow < height; currentRow++){
        int sum = 0;
        for(int i = currentRow; i >= 0; i--){
          sum += matrix[i][currentColumn];
          if(sum == k){
            return k;
          } else if(sum < k && (max == null || sum > max)){
            max = sum;
          }
          rowsSumsArrays[currentColumn].add(sum);
        }
      }
    }
    //Find sum of sum arrays to calculate all possible rectangles from rows perspective
    for(int currentColumn = 0; currentColumn < rowsSumsArrays.first.length; currentColumn++){
      for(int currentRow = 0; currentRow < length; currentRow++){
        int sum = 0;
        for(int i = currentRow; i >= 0; i--){
          sum += rowsSumsArrays[i][currentColumn];
          if(sum == k){
            return k;
          } else if(sum < k && (max == null || sum > max)){
            max = sum;
          }
        }
      }
    }
    return max!;
  }
}