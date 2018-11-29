other
getIntermediateAttachedEvents

	^self activities select: [:each | each isIntermediateEventNode and:[each isAttached]]