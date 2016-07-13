other
setStandardLoopConditionWith: xmlNode

	(xmlSegment findElementNamed: 'LoopCondition') 
		ifNotNil: [:loopCondNode | 
			loopCondNode nodes notEmpty ifTrue: [loopCondition := loopCondNode nodes last asString].
		].