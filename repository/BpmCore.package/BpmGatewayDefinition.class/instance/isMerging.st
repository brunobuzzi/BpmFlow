other
isMerging
	"Answer whether or not the receiver is merging the process path"

	^(inTransitions size > 1) and: [outTransitions size = 1]