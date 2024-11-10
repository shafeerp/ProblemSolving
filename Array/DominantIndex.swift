/*
 Input: nums = [3,6,1,0]
 Output: 1
 Explanation: 6 is the largest integer.
 For every other number in the array x, 6 is at least twice as big as x.
 The index of value 6 is 1, so we return 1.
 Example 2:

 Input: nums = [1,2,3,4]
 Output: -1
 Explanation: 4 is less than twice the value of 3, so we return -1.
 */


func dominantIndex(_ nums: [Int]) -> Int {
    var maxValue: (Int, Int) = (nums[0],0)
    for (index,value) in nums.enumerated() where value > maxValue.0 {
        maxValue.0 = value
        maxValue.1 = index
    }
    for (index,value) in nums.enumerated() where  value * 2 > maxValue.0 && index != maxValue.1 {
        return -1
    }
    return maxValue.1
}