other
isSplitting
	"Answer whether or not the receiver is splitting the process path"

	^(inTransitions size = 1) and: [outTransitions size > 1]