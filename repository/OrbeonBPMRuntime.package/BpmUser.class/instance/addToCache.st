other
addToCache

	"not allowed to add two user with the same <username>"
	(self class cache includesKey: self username) ifTrue: [^self class cache at: self username].

	^self class cache at: self username put: self