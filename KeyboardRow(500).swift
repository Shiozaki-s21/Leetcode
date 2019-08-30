class Solution {
    func findWords(_ words: [String]) -> [String] {
            let key1:[String] = ["q", "w","e","r","t","y","u","i","o","p"]
    let key2:[String] = ["a","s","d","f","g","h","j","k","l"]
    let key3:[String] = ["z","x","c","v","b","n","m"]

    var result:[String] = []
    for item in words {
        var oneFlag = true
        var twoFlag = true
        var threeFlag = true
        var item2 = item.lowercased()
        for i in item2.characters {
            if !key1.contains(String(i)) {
                oneFlag = false
            }
            if !key2.contains(String(i)) {
                twoFlag = false
            }
            if !key3.contains(String(i)) {
                threeFlag = false
            }
        }
        if oneFlag || twoFlag || threeFlag {
            result.append(item)
        }
    }

    return result
    }
}
