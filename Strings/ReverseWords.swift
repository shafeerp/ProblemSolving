/*
Q: https://leetcode.com/problems/reverse-vowels-of-a-string
Given a string s, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 

Example 1:

Input: s = "hello"
Output: "holle"
Example 2:

Input: s = "leetcode"
Output: "leotcede"

*/
func reverseWords(_ s: String) -> String {
    var s = s.components(separatedBy: " ").reversed().filter { !$0.isEmpty}
    return String(s.joined(separator: " "))
}