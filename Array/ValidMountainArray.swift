/*
 Valid Mountain Array
 
 Given an array of integers arr, return true if and only if it is a valid mountain array.

 Recall that arr is a mountain array if and only if:

 arr.length >= 3
 There exists some i with 0 < i < arr.length - 1 such that:
 arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
 arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
 */

func validMountainArray(_ arr: [Int]) -> Bool {
    guard arr.count >= 3 else {
        return false
    }
    var i = 0
    var j = arr.count - 1
    while i < arr.count - 1 && arr[i] < arr[i + 1]{
        i += 1
    }
    while j > 0 && arr[j] < arr[j - 1]{
        j -= 1
    }
    return  i == j && i > 0 && j < arr.count - 1
}