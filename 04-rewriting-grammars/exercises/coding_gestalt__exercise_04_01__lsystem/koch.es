// not corect 
set maxobjects 100000
set background cyan

R1
R2
R3
R4
R5

rule R1 md 2  {  
	4 * { x 1 } box
}

rule R2 md 2 {
	R1
	{ x 4 y -1 rz 90 } R2
	{ x 1 y -1 rz 90} R2
	{ x 3 y 3 } R2
	{ x -3 y 3 } R2
}

rule R3 md 2 {
	R2
	{ x -5 y 10  rz -90} R3
	{ x 10 y 5  rz 90} R3
	{ x -9 y 9 } R3
	{ x 9 y 9 } R3
}

rule R4 md 2 { 
	R3
	{ x -23 y 28 rz -90 } R4
	{ x  28 y 23 rz 90 } R4
	{ x -27 y 27 } R4
	{ x 27 y 27 } R4
}

rule R5 md 2 {
	R4
	{ x -77 y 82 rz -90 } R5
	{ x 82 y 77 rz 90 } R5
	{ x 81 y 81 } R5
	{ x -81 y 81 } R5
}
