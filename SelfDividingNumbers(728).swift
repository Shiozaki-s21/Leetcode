class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result:[Int] = []

        for i in left...right {

            if selfDividingNumbersHelper(i: i) {
                result.append(i)
            }
        }

        return result
    }
    
    func selfDividingNumbersHelper(i:Int) -> Bool{

        var a:[Int] = []
        var target = i

        while(target > 0) {
            var divider = target % 10
            if divider == 0 {
               return false
            }

            if i % (target % 10) != 0 {
                return false
            } else {
                target /= 10
            }
        }

        return true
    }
}
