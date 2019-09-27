component creation
addLane: aXPDLLaneNode

	aXPDLLaneNode pool: self.

	(lanes includesKey: aXPDLLaneNode getName) ifTrue: [^lanes at: (aXPDLLaneNode getName, ' (error_58_) ',aXPDLLaneNode asOop printString) put: aXPDLLaneNode].

	^lanes at: aXPDLLaneNode getName put: aXPDLLaneNode