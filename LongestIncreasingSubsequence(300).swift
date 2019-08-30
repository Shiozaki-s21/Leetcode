class Solution {

func lengthOfLIS(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }

    var d = Array<Int>()
    d.append(nums[0])
    for i in 1..<nums.count {
        if !d.contains(nums[i]) {
            if d[d.count - 1] < nums[i] {
                d.append(nums[i])
            } else {
                // to replace
                var index:Int = 0
                for tmp in 0..<d.count {
                    if d[tmp] > nums[i] {
                        index = tmp
                        break
                    }
                }
                d[index] = nums[i]
            }
        }
    }

    return d.count
}
}
