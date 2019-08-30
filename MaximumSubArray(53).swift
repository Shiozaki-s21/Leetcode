class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.isEmpty { 
            return 0 
        }

        var sum = nums[0]
        var minSum = min(nums[0], 0)
        var res = nums[0]
        var i = 1
        while i < nums.count {
            let num = nums[i]
            sum += num
            res = max(res, sum - minSum)
            minSum = min(minSum, sum)
            i += 1
        }

        return res
    }
}
