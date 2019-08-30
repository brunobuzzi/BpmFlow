performers
getNextRoleIfNone: aBlock
	"The receiver answer the next <role> that is working now"

	^performersRegistry getNextRoleIfNone: aBlock