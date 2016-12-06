svg
drawOn: aJasvgiBpmCanvas at: aPoint

	self isMultiInstance 
	ifFalse: [^aJasvgiBpmCanvas 
						drawActivityNamed: name
						at: aPoint 
						extent: 150@60].

	^aJasvgiBpmCanvas 
			drawMultiInstaceActivityNamed: name 
			at: aPoint
			extent: 150@60