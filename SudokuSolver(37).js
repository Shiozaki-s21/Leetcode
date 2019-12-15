let input = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

// let input = [[".",".","9","7","4","8",".",".","."],["7",".",".",".",".",".",".",".","."],[".","2",".","1",".","9",".",".","."],[".",".","7",".",".",".","2","4","."],[".","6","4",".","1",".","5","9","."],[".","9","8",".",".",".","3",".","."],[".",".",".","8",".","3",".","2","."],[".",".",".",".",".",".",".",".","6"],[".",".",".","2","7","5","9",".","."]]

// create variable 
let lines = []
let boxes = []

// create each line
for (let index = 0; index < input.length; index ++) {
	let line = [input[0][index], input[1][index], input[2][index], input[3][index], input[4][index], input[5][index], input[6][index], input[7][index], input[8][index]]
	lines.push(line)
}

//create each box
for (let index = 0; index < input.length; index += 3) {
	let box1 = [input[index][0], input[index][1], input[index][2], input[index+1][0], input[index+1][1], input[index+1][2], input[index+2][0], input[index+2][1], input[index+2][2]]
	let box2 = [input[index][3], input[index][4], input[index][5], input[index+1][3], input[index+1][4], input[index+1][5], input[index+2][3], input[index+2][4], input[index+2][5]]
	let box3 = [input[index][6], input[index][7], input[index][8], input[index+1][6], input[index+1][7], input[index+1][8], input[index+2][6], input[index+2][7], input[index+2][8]]
	boxes.push(box1)	
	boxes.push(box2)
	boxes.push(box3)
}

// create box index
const boxIndex = [[0,1,2], [3,4,5], [6,7,8]]
const boxesMap = [
	[0,0], [0,1], [0,2], [0,3], [0,4], [0,5], [0,6], [0,7], [0,8],
	[1,0], [1,1], [1,2], [1,3], [1,4], [1,5], [1,6], [1,7], [1,8],
	[2,0], [2,1], [2,2], [2,3], [2,4], [2,5], [2,6], [2,7], [2,8],
	[3,0], [3,1], [3,2], [3,3], [3,4], [3,5], [3,6], [3,7], [3,8],
	[4,0], [4,1], [4,2], [4,3], [4,4], [4,5], [4,6], [4,7], [4,8],
	[5,0], [5,1], [5,2], [5,3], [5,4], [5,5], [5,6], [5,7], [5,8],
	[6,0], [6,1], [6,2], [6,3], [6,4], [6,5], [6,6], [6,7], [6,8],
	[7,0], [7,1], [7,2], [7,3], [7,4], [7,5], [7,6], [7,7], [7,8],
	[8,0], [8,1], [8,2], [8,3], [8,4], [8,5], [8,6], [8,7], [8,8],
]

// fill empty
	for ( let boxesIndex = 0 ;boxes.map(v => v.filter(v => v != ".")).toString().split(',').length < 81 ; boxesIndex < 80 ? boxesIndex++ : boxesIndex = 0) {
	// boxes.map(v => v.filter(v => v != ".")).toString().split(',').length < 81; 
		let row = boxesMap[boxesIndex][0]
		let line = boxesMap[boxesIndex][1]	

		if(input[row][line] == ".") {
			// check each state
			const canditate = new Set(["1","2","3","4","5","6","7","8","9"])
			const r = new Set(input[row])
			const l = new Set(lines[line])  
			// convert row and line to boxes
			const index = boxIndex[Math.floor(row / 3)][Math.floor(line / 3)]
			const setBox = new Set(boxes[index])
			
			const intersection = new Set([...canditate].filter(e => !r.has(e)).filter(e => !l.has(e)).filter(e => !setBox.has(e))); 
			
			if ([...intersection].length == 1) {
				const num = [...intersection].pop()
				// replace box
				// print it before coding

				boxes[index][boxIndex[Math.floor(row % 3)][Math.floor(line % 3)]] = num
				input[row][line] = num
				lines[line][row] = num
			}

		} else {
			// nothing to do		
		}
}

console.log(boxes)