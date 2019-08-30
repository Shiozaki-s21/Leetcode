class Solution {
    func addDigits(_ num: Int) -> Int {
        var target:Int = num
        var result = 0

        while(true) {

            while(target > 0) {
                result += target % 10
                target /= 10
            }
            if result >= 10 {
                target = result
                result = 0
            } else {
                break
            }
        }
        return result
    }
}
