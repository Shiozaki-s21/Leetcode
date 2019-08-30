class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var target = t
        for item in s.characters {
            if target.contains(item){
                target.remove(at: target.firstIndex(of: item)!)
            }
        }
        return target.first!
    }
}
