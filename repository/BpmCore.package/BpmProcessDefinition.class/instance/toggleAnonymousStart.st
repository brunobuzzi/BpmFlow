anonymous form
toggleAnonymousStart

	self isAnonymousStartEnabled ifTrue: [^self removeFromAnonymousStart].

	^self addToAnonymousStart