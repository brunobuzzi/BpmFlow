other
getIntermediateAttachedEvents

	^self activitiesSelect: [:each | each isIntermediateEventNode and:[each isAttached]]