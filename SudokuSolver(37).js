let input = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

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

// fill empty
for (let row = 0, line = 0 ; line <=8 && row <= 8; line == 8 ? row++: row = row, line == 8 ? line = 0 : line ++) {
		if(input[row][line] == ".") {
			// check each state
			const canditate = new Set(["1","2","3","4","5","6","7","8","9"])
			const r = new Set(input[row])
			const l = new Set(lines[line])  
			// convert row and line to boxes
			const index = boxIndex[Math.floor(row / 3)][Math.floor(line / 3)]
			const setBox = new Set(boxes[index])
			
			console.log(row + ":" + line)
			// const test = new Set([...canditate].filter(v => (r.has(v))))
			const intersection = new Set([...canditate].filter(e => !r.has(e)).filter(e => !l.has(e)).filter(e => !setBox.has(e))); 
			if ([...intersection].length == 1) {
				const num = [...intersection].pop()
				// replace box
				boxes[row][line] = num
				// input[][]
			}


			// console.log(intersection)
		} else {
			// nothing to do		

		}
}


console.log("--------output--------")