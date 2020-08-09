/*
 question: https://leetcode.com/problems/find-common-characters/
 */

func commonChars(_ A: [String]) -> [String] {
    var minFrequency = Array(repeating: Int.max, count: 26)
    var commonChar = [String]()
    let asciiOfA = Int(Character("a").asciiValue ?? 0)
    for word in A {
        
        var charFrequency = Array(repeating: 0, count: 26)
        for char in word {
            let asci = Int(char.asciiValue ?? 0)
            charFrequency[asci - asciiOfA] += 1
        }
        for i in 0..<26 {
            minFrequency[i] = min(minFrequency[i],charFrequency[i])
        }
    }
    for index in 0..<26 {
        while minFrequency[index] > 0 {
            commonChar.append(String(UnicodeScalar(asciiOfA + index)!))
            minFrequency[index] -= 1
        }
    }
    return commonChar
}

