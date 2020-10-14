//
//  RemoveDuplicatesFromSorted.swift
//  Question: Remove Duplicates from Sorted Array
//

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 0
    var map = [Int:Bool]()
    for value in nums where map[value] ==  nil {
        nums[index] = value
        map[value] = true
        index += 1
    }
    return index
}
