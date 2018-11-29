other
getActivationBlockValue

	self isTimerNode ifFalse: [^''].

	^self extendedValueOf: 'activationBlock' ifAbsent: ''