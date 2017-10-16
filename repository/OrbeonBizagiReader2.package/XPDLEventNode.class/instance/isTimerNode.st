other
isTimerNode
	"Answer whether or not the receiver is a -Timer- type"

	^(self valueOf: 'trigger' ifAbsent: [^false]) = 'Timer'