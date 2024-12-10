import 'package:dart_dsa_series/basic_computation/arrays/array_problems.dart'
    as arrays;
import 'package:dart_dsa_series/basic_computation/string_manipulation/string_manipulation.dart'
    as string_manipulation;

void main(List<String> arguments) {
  print('Hello world: ${string_manipulation.calculate()}!');
  print(
      'Remove Duplicates: ${string_manipulation.removeDuplicates('anantha')}');
  print('Substring of a String: ${string_manipulation.subStrings('abc')}');
  print('Anagram: ${string_manipulation.checkAnagram('silent', 'lis ten')}');
  string_manipulation.countVowelsAndConsonants('This is a sentence');
  print(
      'Sum of even numbers: ${arrays.sumOfEvenNumbers([1, 2, 3, 4, 5, 6, 7])}');
  print(
      'Count Occurrences: ${string_manipulation.countOccurrences('Count occurrences of this sentence')}');
  print('Reverse String: ${string_manipulation.reverseString('silent')}');
}
