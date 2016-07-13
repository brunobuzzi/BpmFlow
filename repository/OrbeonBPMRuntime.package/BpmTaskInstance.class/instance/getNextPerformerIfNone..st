performers
getNextPerformerIfNone: aBlock
	"The receiver answer the next <performer> that is working now"

	rolesWhoWorked isEmpty ifTrue: [^self getPerformers first].

	(rolesWhoWorked size = self getPerformers size) ifTrue: [^self getPerformers last].

	^(self getPerformers at: rolesWhoWorked size + 1)