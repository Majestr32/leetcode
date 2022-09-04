class Solution1 {
 bool isPalindrome(int x) {
      if(x < 10 && x >= 0){
          return true;
      }
      if(x.isNegative || x % 10 == 0){
        return false;
      }
      int i = 10;
      int a;
      int xCopy = x;
      int sum = 0;
      do{
        a = xCopy % 10;
        sum = (sum * 10) + a;
        xCopy ~/= 10;
      }while(xCopy.toInt() != 0);
      if(x == sum){
        return true;
      }
      return false;
  }
}
class Solution2 {
 bool isPalindrome(int x) {
      String str = x.toString();
      int j = str.length - 1;
      int i = 0;
      while(i < str.length){
        if(str[i] != str[j]){
          return false;
        }
        i++;
        j--;
      }
      return true;
  }
}
