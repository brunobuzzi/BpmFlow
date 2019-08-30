other
getNextPerformerIfNone: aBlock
	"The receiver answer the next <performer> that is working now"

	rolesWhoWorked isEmpty ifTrue: [^self performers first].

	(rolesWhoWorked size = self performers size) ifTrue: [^self performers last].

	^(self performers at: rolesWhoWorked size + 1)