other
setLoopCondtionWithNode: xmlNode

	(loopType = 'None') ifTrue: [^self].

	(loopType = 'Standard') ifTrue: [^self setStandardLoopConditionWith: xmlNode].

	(loopType = 'MultiInstance') ifTrue: [^self setMultiInstanceLoopConditionWith: xmlNode].