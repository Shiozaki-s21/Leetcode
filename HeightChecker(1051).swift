class Solution {
	func heightChecker(_ heights: [Int]) -> Int {
    	var result = 0
    
    	let sortedArr = heights.sorted()
	
    	for i in 0..<heights.count{
        	if heights[i] != sortedArr[i]{
            	result += 1
        	}
    	}
    
    	return result
	}
}
