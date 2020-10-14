//
//  RemoveElement.swift
//  Question: https://leetcode.com/problems/remove-element/



func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var index = 0
    for value in nums where value != val {
        nums[index] = value
        index += 1
    }
    return index
}
