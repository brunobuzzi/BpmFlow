code analyzer
checkOneArgumentBlockRule
	"Receiver's block must be a ONE argument block"

	(parser arguments size = 0) 
	ifTrue: [^self addBlockWarning: 'Block has no argument'].

	(parser arguments size > 1) 
	ifTrue: [^self addBlockWarning: 'Block has more than one argument'].