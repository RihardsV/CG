// Write EisenScript code here...
set maxobjects 30000
set background yellow

R1


rule R1 md 2 {
	10 * { x 1 h 0 } box
	{ x 10 ry 90 } R1
	{ x 1 rz 90 } R1
	{ x -10 y 10 } R1
	{ x -20 y 10 } R1
}