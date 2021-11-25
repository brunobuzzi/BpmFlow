anonymous form
checkAndRegisterAsAnonymousStart
	"The receiver check if it has and anonymous start. If <true> register itself in the anonymous start Dictionary"

	executionPath startEventHasAnonymousStart ifTrue: [self addToAnonymousStart].