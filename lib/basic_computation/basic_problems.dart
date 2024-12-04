int calculate() {
  return 6 * 7;
}

/// remove duplicates from the String
String removeDuplicates(String inputString) {
  List<String> inputListString = inputString.split("");
  Set<String> inputSetString = inputListString.toSet();
  String newString = inputSetString.join();
  return newString;
}

/// find all the substrings of a String
List<String> subStrings(String inputString){
  int n = inputString.length;
  List<String> subStringList = [];
  for(int i =0; i  < n; i++){
    for(int j = i +1; j <=n; j++){
      subStringList.add(inputString.substring(i,j));
    }
  }
  return subStringList;
}

///Write a function to check if two strings are anagrams (contain the same characters in different orders).
