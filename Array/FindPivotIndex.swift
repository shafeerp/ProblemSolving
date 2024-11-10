
/*
 Example 1:

 Input: nums = [1,7,3,6,5,6]
 Output: 3
 Explanation:
 The pivot index is 3.
 Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
 Right sum = nums[4] + nums[5] = 5 + 6 = 11
 Example 2:

 Input: nums = [1,2,3]
 Output: -1
 Explanation:
 There is no index that satisfies the conditions in the problem statement.
 Example 3:

 Input: nums = [2,1,-1]
 Output: 0
 Explanation:
 The pivot index is 0.
 Left sum = 0 (no elements to the left of index 0)
 Right sum = nums[1] + nums[2] = 1 + -1 = 0
 */


func pivotIndex(_ nums: [Int]) -> Int {
    var index = 0
    var leftSum = 0
    var rightSum = nums.reduce(0, +)
    while index < nums.count {
        leftSum += nums[index]
        if leftSum == rightSum {
            return index
        }
        rightSum -= nums[index]
        index += 1
    }
    return -1
}