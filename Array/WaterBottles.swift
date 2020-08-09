/*
 question: https://leetcode.com/problems/water-bottles/
 */

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var result = 0, reminder = 0, numBottles = numBottles, newNumBottles = numBottles
    while numBottles > 0  && reminder < numExchange{
        result += newNumBottles
        newNumBottles = (newNumBottles+reminder) / numExchange
        reminder = (numBottles + reminder)%numExchange
        numBottles = newNumBottles
    }
    return result
}
