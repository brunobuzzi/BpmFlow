*orbeonBPMXpdl
getLoopTypeClass

	(loopType = 'Standard') ifTrue: [^BpmStandartTaskLoop].

	(loopType = 'MultiInstance') ifTrue: [^BpmMultiInstanceTaskLoop].

	(loopType = 'None') ifTrue: [^BpmNoneTaskLoop].

	^BpmNoneTaskLoop