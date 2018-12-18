other
getParentTransitionsOn: anOrderedCollection
	"Append the receiver to <anOrderedCollection> and ask the receiver's parent to do the same"

	anOrderedCollection add: transition.

	parent ifNil: [^anOrderedCollection].

	^parent getParentTransitionsOn: anOrderedCollection