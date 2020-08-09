/*
 question: https://leetcode.com/problems/reverse-integer/
 */

func reverse(_ x: Int) -> Int {
    
    var reversedInt = 0, digit = x
    while digit != 0 {
        if reversedInt > Int(Int32.max) / 10 || reversedInt < Int(Int32.min) / 10 {
            return 0
        }
        reversedInt = reversedInt * 10 + digit % 10
        digit /= 10
    }
    return reversedInt
}
