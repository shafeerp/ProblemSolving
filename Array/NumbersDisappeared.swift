/*
https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array

Find All Numbers Disappeared in an Array
Solved
Easy
Topics
Companies
Hint
Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

 

Example 1:

Input: nums = [4,3,2,7,8,2,3,1]
Output: [5,6]
Example 2:

Input: nums = [1,1]
Output: [2]

*/

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    let set = Set(nums)
    for value in 1...nums.count where !set.contains(value) {
        result.append(value)
    }
    return result
}