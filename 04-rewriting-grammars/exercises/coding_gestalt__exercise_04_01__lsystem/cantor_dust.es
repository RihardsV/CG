set maxobjects 500000
set background white

R1
//R2
//R3
//R4

rule R1 md 6 {
	30 * { z 0.5 } box
	{ x 1.2 s 1 1 0.3 } R1
	{ x 1.2 z 10.8 s 1 1 0.3 } R1
}
/*
rule R2 md 4 { 
	R1
	{ rz 90 } R2
}

rule R3 md 4 { 
	R1
	{ x 6  y -6 rz 90 } R3
}

rule R4 md 4 { 
	R3
	{ x 12 rz 90 }R4
	{ x 12 rz -90 } R4
}