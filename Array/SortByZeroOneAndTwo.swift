/*
 question: https://www.geeksforgeeks.org/sort-an-array-of-0s-1s-and-2s/
 */


func sortByZeroOneAndTwo(_ arr: inout [Int]){
    var zeroCount = 0, oneCount = 0, twoCount = 0,index = 0
    
    for value in arr {
        if value == 0 {
            zeroCount += 1
        }
        else if value == 1 {
            oneCount += 1
        }
        else if value == 2 {
            twoCount += 1
        }
    }
    
    while zeroCount > 0 {
        arr[index] = 0
        index += 1
        zeroCount -= 1
    }
    
    while oneCount > 0 {
        arr[index] = 1
        index += 1
        oneCount -= 1
    }
    
    while twoCount > 0 {
        arr[index] = 2
        index += 1
        twoCount -= 1
    }
}
