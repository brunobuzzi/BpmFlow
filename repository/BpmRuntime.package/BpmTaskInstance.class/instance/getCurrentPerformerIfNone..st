performers
getCurrentPerformerIfNone: aBlock
	"The receiver answer the current <performer> that is working now"

	rolesWhoWorked isEmpty ifTrue: [^self getPerformers first].

	^(self getPerformers at: rolesWhoWorked size)