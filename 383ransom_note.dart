class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    for(var rune in ransomNote.runes){
      var char = String.fromCharCode(rune);
      if(magazine.contains(char)){
        magazine = magazine.replaceFirst(char, "");
      }else{
        return false;
      }
    }
    return true;
  }
}