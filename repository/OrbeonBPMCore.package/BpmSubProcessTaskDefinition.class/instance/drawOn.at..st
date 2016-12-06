svg
drawOn: aJasvgiBpmCanvas at: aPoint

	self isMultiInstance 
	ifFalse: [^aJasvgiBpmCanvas 
						drawSubProcessActivityNamed: name
						at: aPoint 
						extent: 150@60].

	^aJasvgiBpmCanvas 
			drawSubProcessActivityNamed: name 
			at: aPoint
			extent: 150@60