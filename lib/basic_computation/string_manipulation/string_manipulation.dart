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
List<String> subStrings(String inputString) {
  int n = inputString.length;
  List<String> subStringList = [];
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j <= n; j++) {
      subStringList.add(inputString.substring(i, j));
    }
  }
  return subStringList;
}

///Write a function to check if two strings are anagrams (contain the same characters in different orders).
bool checkAnagram(String str1, String str2) {
  str1 = str1.replaceAll(" ", "").toLowerCase();
  str2 = str2.replaceAll(" ", "").toLowerCase();

  if (str1.length != str2.length) {
    print('Length is not matching, hence it is not anagram');
    return false;
  }

  // sorting will make things alphabetic

  List<String> newStr1 = str1.split('')..sort();
  List<String> newStr2 = str2.split('')..sort();

  return newStr1.join() == newStr2.join();
}

/// Write a function to count the number of vowels and consonants in a given string.
void countVowelsAndConsonants(String inputString) {
  List<String> inputListString =
      inputString.replaceAll(" ", "").toLowerCase().split('');
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int vowelsCount = 0;
  int consonantsCount = 0;
  for (var v in inputListString) {
    if (vowels.contains(v)) {
      vowelsCount++;
    } else {
      consonantsCount++;
    }
  }
  print('The number of vowels in this sentence is $vowelsCount');
  print('The number of Consonants in this sentence is $consonantsCount');
}

/// Write a function to count the occurrences of each character in a given string.
Map<String, int> countOccurrences(String inputString) {
  Map<String, int> mapOfOccurrences = {};
  List<String> inputList =
      inputString.replaceAll(" ", "").toLowerCase().split('');
  for (var count in inputList) {
    mapOfOccurrences[count] = (mapOfOccurrences[count] ?? 0) + 1;
  }
  return mapOfOccurrences;
}

/// Write a function to print the first n terms of the Fibonacci sequence.
/// write a function to reverse a String
String reverseString(String inputString) {
  List<String> reversedStringList = [];

  for (int i = inputString.length - 1; i >= 0; i--) {
    reversedStringList.add(inputString[i]);
  }
  String revString = reversedStringList.join();
  return revString;
}

/// write a program to convert string into a title case (first character of each word should be capital)
String capitalizeLetter(String inputString) {
  List<String> inputStringList = inputString.split(' ');
  List<String> capitalizeStringList = [];
  for (var input in inputStringList) {
    capitalizeStringList
        .add(input[0].toUpperCase() + input.substring(1).toLowerCase());
  }
  return capitalizeStringList.join(" ");
}

/// Write a function to find the first character in a string that does not repeat.
String firstNonRepeatingString(String inputString) {
  Map<String, int> countCharacters = {};
  String nonRepeatingString = '';
  for (var n in inputString.split('')) {
    countCharacters[n] = (countCharacters[n] ?? 0) + 1;
  }

  for (var char in countCharacters.entries) {
    if (char.value == 1) {
      return nonRepeatingString = char.key;
    }
  }
  return nonRepeatingString;
}

/// Rearrange the String based on their frequency of occurance. ex: input : 'tree' output: 'eert' or 'eetr'
/// 
