other
setMultiInstanceLoopConditionWith: xmlNode

	(xmlSegment findElementNamed: 'MI_Condition') 
		ifNotNil: [:loopCondNode | 
			loopCondNode nodes notEmpty ifTrue: [loopCondition := loopCondNode nodes last asString].
		].