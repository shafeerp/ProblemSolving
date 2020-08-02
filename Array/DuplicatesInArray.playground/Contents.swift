/*
 question: https://www.techiedelight.com/find-duplicates-within-given-range-array/
 */
//
//func fundDuplication(_ arr: [Int],_ range: Int) -> Bool {
//    var map = [Int:Int]()
//    for index in 0..<arr.count {
//        if arr[index] == map[index] {
//
//        }
//        map[arr[index]] = arr[index]
//    }
//}



func test() -> Int {
    for i in 1...10 {
        guard i != 4 else {
            return i
        }
        continue
    }
    return 10
}

print(test())
