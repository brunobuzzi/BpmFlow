other
getNextPerformerIfNone: aBlock
	"The receiver answer the next <performer> that is working now"

	rolesWhoWorked isEmpty ifTrue: [^self performersFirst].

	(rolesWhoWorked size = self performersSize) ifTrue: [^self performersLast].

	^(self performersAt: rolesWhoWorked size + 1)