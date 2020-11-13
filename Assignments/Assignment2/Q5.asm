	ORG 100
	CLE
	LDA X
	BSA IsPrime // if is prime E = 1 else E = 0
	CLA
	CIL

Output  SKO
	BUN Output
	OUT
	HLT

// Variables
X       DEC 635

IsPrime DEC 0 // pass input via Ac
	CLE
	STA IsPriIn
	CMA 
	INC
	INC
	INC // assign -input + 2
	STA IsPriCo				
	LDA IsPriIn
	
Loop	LDA IsPriCo
	CMA
	INC
	INC
	STA Input
	CLE
	LDA IsPriIn
	BSA IsDivAl // if is dividable E = 1 else E = 0
	Input	DEC 0
	CLA
	CIL
	ADD IsPriDi
	STA IsPriDi
	ISZ IsPriCo
	BUN Loop

	CLE
	LDA IsPriDi
	SPA
	ISZ IsPriOu
	LDA IsPriOu
	CIR
		
	BUN IsPrime I

//IsPrime Variables 
IsPriIn DEC 0
IsPriCo DEC 0
IsPriDi DEC 0
IsPriOu DEC 0	


IsDivAl DEC 0 // pass input1 via Ac & input2 via indirect addressing
	CLE
	STA IsDiIn1
	LDA IsDivAl I
	ISZ IsDivAl
	CMA 
	INC
	STA IsDiIn2 // assign  -input2
	
	LDA IsDiIn1
Loop2 	ADD IsDiIn2
	SNA
	BUN Loop2

	CMA
	INC
	ADD IsDiIn2
	
	SPA
	ISZ IsDiOut
	SNA 
	ISZ IsDiOut
	
	LDA IsDiOut
	CIR
		
	BUN IsDivAl I
	

//IsDivAl Variables
IsDiIn1	DEC 0
IsDiIn2 DEC 0	
IsDiOut DEC 0






