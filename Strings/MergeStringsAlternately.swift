

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var finalWord = ""
    var word1 = word1
    var word2 = word2
    
    while !word1.isEmpty, !word2.isEmpty {
        finalWord.append(word1.removeFirst())
        finalWord.append(word2.removeFirst())
    }
    if !word1.isEmpty { finalWord.append(word1) }
    if !word2.isEmpty { finalWord.append(word2) }
    return finalWord
}

/*
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Return the merged string.

 

Example 1:

Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r
Example 2:

Input: word1 = "ab", word2 = "pqrs"
Output: "apbqrs"
Explanation: Notice that as word2 is longer, "rs" is appended to the end.
word1:  a   b 
word2:    p   q   r   s
merged: a p b q   r   s
Example 3:

Input: word1 = "abcd", word2 = "pq"
Output: "apbqcd"
Explanation: Notice that as word1 is longer, "cd" is appended to the end.
word1:  a   b   c   d
word2:    p   q 
merged: a p b q c   d
 
*/

// Solution 1

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var finalWord = ""
    var word1 = word1
    var word2 = word2
    
    while !word1.isEmpty, !word2.isEmpty {
        finalWord.append(word1.removeFirst())
        finalWord.append(word2.removeFirst())
    }
    if !word1.isEmpty { finalWord.append(word1) }
    if !word2.isEmpty { finalWord.append(word2) }
    return finalWord
}


//Solution 2
func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var finalWord = ""
    var index1 = 0
    var index2 = 0
    let m  = word1.count
    let n = word2.count
    while index1 < m || index2 < n {
        if index1 < m {
            finalWord += String(word1[word1.index(word1.startIndex, offsetBy: index1)])
            index1 += 1
        }
        if index2 < n {
            finalWord += String(word2[word2.index(word2.startIndex, offsetBy: index2)])
            index2 += 1
        }
    }
    return finalWord
}