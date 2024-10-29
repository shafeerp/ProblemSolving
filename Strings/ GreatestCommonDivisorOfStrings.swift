/*
https://leetcode.com/problems/greatest-common-divisor-of-strings/

For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

 

Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""
*/
func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    guard str1 + str2 == str2 + str1 else { return "" }
    let gcd = gcd(str1.count, str2.count)
    return String(str1.prefix(gcd)) 
}
    
private func gcd(_ a: Int, _ b: Int) -> Int {
    if a == b {
        return a
    } else if a > b {
        return gcd(a - b, b)
    } else {
        return gcd(a, b - a)
    }
}