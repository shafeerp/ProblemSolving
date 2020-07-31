/*
 Question: Rotate array by 2
 
 input: [1,3,4,7,5,8]
 output: [4,7,5,8,1,3]
 */

func rotateArray(_ arr: inout [Int],_ by: Int) {
    for _ in 0..<by {
        rotateArrayByOne(&arr)
    }
}

func rotateArrayByOne(_ arr: inout [Int]) {
    let temp = arr[0]
    for index in 0..<arr.count - 1 {
        arr[index] = arr[index+1]
    }
    arr[arr.count - 1] = temp
}
