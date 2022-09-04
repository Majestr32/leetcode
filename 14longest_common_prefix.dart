class Solution {
  String longestCommonPrefix(List<String> strs) {
    String res = "";
    int longestLength = strs.fold<int>(strs.first.length, (previousValue, element) => element.length < previousValue ? element.length : previousValue);
    for(int i = 0; i < longestLength; i++){
      String char = strs.first[i];
      for(int j = 0; j < strs.length; j++){
        if(char != strs[j][i]){
          return res;
        }
      }
      res += char;
    }
    return res;
  }
}