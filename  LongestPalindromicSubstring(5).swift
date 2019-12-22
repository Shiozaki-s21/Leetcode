class Solution {
    func longestPalindrome(_ s: String) -> String {

    }

}


let solution:Solution = Solution();

print("Test1:")
let test1 = "babad";
let result = solution.longestPalindrome(test1);
if result == "bab" || result == "aba" {
  print("Bingo");
  print(result);
}

print("Test2:")
let test2 = "cbbd";
let result2 = solution.longestPalindrome(test2)
if result2 == "bb" {
  print("Bingo");
  print(result2)
}

print("Test3:")
let test3 = "ac";
let result3 = solution.longestPalindrome(test3)
if result3 == "a" || result3 == "c"{
  print("Bingo");
  print(result3)
} else {
  print("test3 was failed")
}


print("test4:")
let test4 = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
let reslt4 = solution.longestPalindrome(test4);
if (reslt4 == "ranynar") {
  print("Bingo")
  print(reslt4)
} else {
  print("test4 was failed")
  print(reslt4)
}
