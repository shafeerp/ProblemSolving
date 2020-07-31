/*
 question: https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3287/
 */

func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else { return 0 }
    var totalProfit = 0
    for i in 1..<prices.count where prices[i] > prices[i-1] {
        totalProfit += prices[i] - prices[i-1]
    }
    return totalProfit
}
