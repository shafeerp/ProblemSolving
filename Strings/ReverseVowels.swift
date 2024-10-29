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

func reverseVowels(_ s: String) -> String {
    var s = Array(s)
    var i = 0, j = s.count - 1
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    while i < j {
        if vowels.contains(s[i]), vowels.contains(s[j]) {
            let temp = s[i]
            s[i] = s[j]
            s[j] = temp
            j -= 1
            i += 1
        }
        else if vowels.contains(String(s[i])) {
            j -= 1
        }
        else if vowels.contains(String(s[j])) {
            i += 1
        }
        else {
            j -= 1
            i += 1
        }
    }
    return String(s)
}