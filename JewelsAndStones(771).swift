class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var J = J
        var S = S
        let temp = S
        J.forEach() { c in
            S = S.replacingOccurrences(of: c.description, with: "")
        }
                     return temp.count - S.count
    }
}
