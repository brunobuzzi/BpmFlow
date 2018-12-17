other
getParentNodesOn: anOrderedCollection

	anOrderedCollection add: self.

	parent ifNil: [^self].

	^parent getParentNodesOn: anOrderedCollection