
/*
 Question: https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3283/
 */

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for num in nums {
        result ^= num
     }
    return result
}
