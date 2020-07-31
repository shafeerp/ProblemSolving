/*
 question: https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3283/
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var anagramsDict = [String:[String]]()
    for str in strs {
        let sortedStr = String(str.sorted())
        anagramsDict[sortedStr,default:[]].append(str)
    }
    return Array(anagramsDict.values)
}
