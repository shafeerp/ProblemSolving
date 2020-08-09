/*
 question: https://leetcode.com/problems/add-digits/
 */

func addDigits(_ num: Int) -> Int {
    let numInString = String(num)
    guard numInString.count > 1 else {
        return num
    }
    let array = Array(numInString)
    let sum = array.reduce(0) { Int($0) + Int(String($1))! }
    return addDigits(sum)
}
