class Solution {
    func numDecodings(_ s: String) -> Int {
        let s = Array(s)
        var dp = Array(repeating: 0, count: s.count)
        
        for i in 0..<dp.count {
            if s[i] != "0" {
                dp[i] += (i >= 1) ? dp[i-1] : 1
            }

            if i >= 1 {
                let combined = Int(String(s[i-1...i]))!
                if combined >= 10 && combined <= 26 {
                    dp[i] += (i >= 2) ? dp[i-2] : 1
                }
            }
        }
        
        return dp.last ?? 0
    }
}
