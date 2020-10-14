//
//  CheckIfNandItsDoubleExist.swift
//  Question: https://leetcode.com/problems/check-if-n-and-its-double-exist/
//

func checkIfExist(_ arr: [Int]) -> Bool {
    var set = Set<Int>()
    for value in arr {
        if set.contains(value * 2) || (value % 2 == 0 && set.contains(value/2)) {
            return true
        }
        set.insert(value)
    }
     return false
}

