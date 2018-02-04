roles
getFirstPerformerIfNone: aBlock

	^performers notEmpty
		ifTrue: [performers first]
		ifFalse: aBlock