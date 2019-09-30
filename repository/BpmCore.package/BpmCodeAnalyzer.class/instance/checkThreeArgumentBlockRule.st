code analyzer
checkThreeArgumentBlockRule
	"Receiver's block must be a THREE argument block."

	(parser arguments size = 0) 
	ifTrue: [^self addBlockWarning: 'Block has no argument'].

	(parser arguments size ~= 3) 
	ifTrue: [^self addBlockWarning: 'Block does not have three arguments'].