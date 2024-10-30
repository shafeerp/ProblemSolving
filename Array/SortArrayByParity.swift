
import Foundation
/*
 Sort array by parity
 https://leetcode.com/problems/sort-array-by-parity/
 
 */
// Pointer approach
func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var result = nums
    var start = 0
    var end = nums.count - 1
    while start < end {
        if result[start] % 2 > result[end] % 2 {
            result.swapAt(start, end)
        }
        if result[start] % 2 == 0 {
            start += 1
        }
        if result[end] % 2 == 1 {
            end -= 1
        }
    }
    return result
}

// Counter approach
func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: nums.count)
    var evenCount = 0
    
    for value in nums where value % 2 == 0 {
        evenCount += 1
    }
    
    var evenIndex = 0
    var oddIndex = evenCount - 1
    for value in nums {
        if value % 2 == 0 {
            result[evenIndex] = value
            evenIndex += 1
        } else {
            result[oddIndex] - value
            oddIndex += 1
            
        }
    }
    return result
}
