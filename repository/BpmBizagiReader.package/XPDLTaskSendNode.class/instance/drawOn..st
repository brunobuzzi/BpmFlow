other
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas 
			drawTaskSendNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight