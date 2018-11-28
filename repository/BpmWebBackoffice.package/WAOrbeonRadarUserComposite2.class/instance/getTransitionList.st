free transitions
getTransitionList

	(listType = 'Possible Tasks') ifTrue: [^self getProcessWithFreeTransitions].

	(listType = 'Current Tasks') ifTrue: [^self getSelectedUserAssignments].

	^self getSelectedUserFinishedAssignments