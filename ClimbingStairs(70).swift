class Solution {
    func climbStairs(_ num: Int) -> Int {
        var d = Array<Int>()

        d.append(1)
        d.append(2)

        if num <= 2 {
            return d[num - 1]
        }

        for i in 2...num {

            d.append(d[i - 1] + d[i - 2])

        }

        return d[num - 1]
    }
}
