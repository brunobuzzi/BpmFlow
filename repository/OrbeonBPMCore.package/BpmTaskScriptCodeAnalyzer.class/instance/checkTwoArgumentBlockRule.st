other
checkTwoArgumentBlockRule
	"Receiver's block must be a TWO argument block.
	[:process :script | ...  ]"

	(parser arguments size = 0) 
	ifTrue: [^self addBlockWarning: 'Block has no argument'].

	(parser arguments size ~= 2) 
	ifTrue: [^self addBlockWarning: 'Block does not have two arguments'].