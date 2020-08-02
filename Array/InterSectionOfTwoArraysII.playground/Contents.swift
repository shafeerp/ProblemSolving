/*
 question: https://leetcode.com/problems/intersection-of-two-arrays-ii/
 */

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = [Int:Int]()
    var result = [Int]()
    for value in nums1 {
        if let count = dict[value] {
            dict[value] = count + 1
            continue
        }
        dict[value] = 1
    }
    
    for value in nums2 {
        if let count = dict[value], count > 0 {
            dict[value] = count - 1
            result.append(value)
        }
    }
    
    
    return result
}
