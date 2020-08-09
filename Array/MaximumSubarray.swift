/*
 Question: https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3285/
 
 */

func maxSubArray(_ nums: [Int]) -> Int {
    var currentMax = nums[0]
    var globalMax = nums[0]
    
    for i in 1..<nums.count {
        currentMax = max(currentMax + nums[i],nums[i])
        globalMax = max(currentMax,globalMax)
    }
    return globalMax
}
