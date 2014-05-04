// Write EisenScript code here...
//set maxobjects 5800
set background white

//{ x -20 s 2 } B1
R1
R2

//rule B1 md 2 {
//	20 * { x 1 s 0.95 } box
//}

rule R1 {
	7 * { x 1 } box
	{ x 7 ry 45 s 0.75 b 0.9 h 10 } R1
	{ x 7 ry -45 s 0.75  b 0.9  h 10} R1
}

rule R2 {
	R1
	{ x 25 rz 30 } R2
} 
