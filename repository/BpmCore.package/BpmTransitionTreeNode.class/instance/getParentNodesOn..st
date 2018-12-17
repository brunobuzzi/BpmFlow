other
getParentNodesOn: anOrderedCollection

	anOrderedCollection add: self.

	parent ifNil: [^anOrderedCollection].

	^parent getParentNodesOn: anOrderedCollection