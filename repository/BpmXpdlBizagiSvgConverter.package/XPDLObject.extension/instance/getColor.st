*bpmxpdlbizagisvgconverter
getColor

	^(((xmlSegment findElementNamed: 'NodeGraphicsInfo') attributeAt: 'FillColor') = '-2517356')
		ifTrue: ['lightblue'] 
		ifFalse: ['lightgray']