*orbeonBizagiSvgConverter
getColor

	^(((xmlSegment findElementNamed: 'ConnectorGraphicsInfo') attributeAt: 'BorderColor') = '-7136256')
		ifFalse: ['red'] 
		ifTrue: ['darkGreen']