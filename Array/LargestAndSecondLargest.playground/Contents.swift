/*
 question: find largest and second largest element from array
 */


func largestAndSecondLargest(_ arr:[Int]) -> [Int] {
    var largest = arr[0]
    var secondLargest = arr[0]
    
    for index in 1..<arr.count {
        if arr[index] > largest {
            secondLargest = largest
            largest = arr[index]
        }else {
            secondLargest = max(secondLargest, arr[index])
        }
    }
    return [largest,secondLargest]
}

