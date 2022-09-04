class Solution {
  int romanToInt(String s) {
    int sum = 0;
    int previousVal = 0;
      for(int i = 0; i < s.length; i++){
        var c = s[i];
        int val = romanValue(c);
        if(i == 0){
          sum = val;
          previousVal = val;
          continue;
        }
        sum += val;
        if(previousVal < val){
          sum = sum - 2 * previousVal; 
        }
        previousVal = val;
      }
    return sum;
  }

  int romanValue(String c){
    switch(c){
          case 'I':
            return 1;
          case 'V':
            return 5;
          case 'X':
            return 10;
          case 'L':
            return 50;
          case 'C':
            return 100;
          case 'D':
            return 500;
          case 'M':
            return 1000;
          default:
            return 0;
        }
  }
}