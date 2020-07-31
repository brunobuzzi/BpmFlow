other
getCurrentPerformerIfNone: aBlock
	"The receiver answer the current <performer> that is working now"

	rolesWhoWorked isEmpty ifTrue: [^self performersFirst].

	^(self performersAt: rolesWhoWorked size)