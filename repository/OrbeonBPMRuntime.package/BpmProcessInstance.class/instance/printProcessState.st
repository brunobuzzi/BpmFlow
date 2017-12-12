execution
printProcessState

	^self hasFinalized ifTrue: ['Finished'] ifFalse: ['Running'].