/*
 question: https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3286/
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 */

func moveZeroes(_ nums: inout [Int]) {
    var nonZeroCount = 0
    for value in nums where value != 0 {
        nums[nonZeroCount] = value
        nonZeroCount += 1
    }
    while nonZeroCount < nums.count {
        nums[nonZeroCount] = 0
        nonZeroCount += 1
    }
}
