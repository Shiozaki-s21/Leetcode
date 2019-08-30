class Solution {
    func reverse(_ x: Int) -> Int {
        if x > 2147483647 || x < -2147483647 {
            return 0
        }

        var result:Int = 0
        var input = x
        var minusFlag = false
        if input < 0 {
            input = input * (-1)
            minusFlag = true
        }

        while(input / 10 > 0) {
            result = result * 10 + input % 10
            input = input / 10
        }

        result = result * 10 + input

        if minusFlag {
            result = result * (-1)
        }
        
        if result > 2147483647 || result < -2147483647 {
            return 0
        }
    

        return result
    }
}
