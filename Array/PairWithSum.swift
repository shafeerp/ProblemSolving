/*
 Question: https://www.geeksforgeeks.org/given-a-sorted-and-rotated-array-find-if-there-is-a-pair-with-a-given-sum/
 
 Input: arr[] = {11, 15, 6, 8, 9, 10}, x = 16
 Output: true
 There is a pair (6, 10) with sum 16
 */


func findPair(arr: [Int],target: Int) {
    var arrayDictionary = [Int:Int]()
    for (index,item) in arr.enumerated() {
        if let value = arrayDictionary[target - item] {
            print("There is a pair (\(arr[value]), \(item)) with sum \(target)")
            break
        }else {
            arrayDictionary[item] = index
        }
    }
}
