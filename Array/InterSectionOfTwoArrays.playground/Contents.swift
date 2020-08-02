
/*
 question: https://leetcode.com/problems/intersection-of-two-arrays/
 */
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var set = Set(nums1)
    var result = [Int]()
    
    for value in nums2 where set.contains(value) {
        result.append(value)
        set.remove(value)
    }
    return result
}
