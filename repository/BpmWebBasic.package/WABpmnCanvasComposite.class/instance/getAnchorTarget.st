other
getAnchorTarget

	^model isProcessInstance ifFalse: ['_blank'] ifTrue: ['_self']