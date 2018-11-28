other
printProcessState

	self isRunning ifFalse: [^self currentState printProcessState].

	self hasFinalized ifTrue: [^'Finished'].

	^self currentState printProcessState