other
getParentTransitionsOn: anOrderedCollection

	anOrderedCollection add: transition.

	parent ifNil: [^anOrderedCollection].

	^parent getParentTransitionsOn: anOrderedCollection