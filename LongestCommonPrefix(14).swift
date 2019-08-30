class Solution {
func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        var prefix = strs[0]
        for str in strs {
            prefix = str.commonPrefix(with: prefix)
            print(prefix)
        }
        return prefix
    }
}
