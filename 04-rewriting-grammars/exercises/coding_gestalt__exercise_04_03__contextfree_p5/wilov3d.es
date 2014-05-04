set maxobjects 2800

{ h 30 sat 0.6 ry 5 } zars
{ h 30 sat 0.6 ry -35 rx 45 } zars

rule zars w 100 {
	box
	{ y 1 ry 2 rx 1 a 0.99 s 0.98 } zars
}

rule zars w 2 {
	zars
	{ y 0.5 rz 5 rx 45 ry 170 a 0.9 s 0.96 } zars
}