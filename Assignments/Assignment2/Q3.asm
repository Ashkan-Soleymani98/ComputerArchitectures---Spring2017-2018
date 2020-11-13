	ORG 100
	
	CLA
FibLoop LDA Num1
	ADD Num2
	STA Result
	LDA Num2
	STA Num1
	LDA Result
	STA Num2 
	ISZ Counter
	BUN FiboLoop
	HLT

Counter DEC -8
Num1    DEC 1
Num2    DEC 1
Result  DEC 0