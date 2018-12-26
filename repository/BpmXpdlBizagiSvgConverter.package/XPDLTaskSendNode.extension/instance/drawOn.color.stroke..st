*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas color: color stroke: stroke

	^aJasvgiBpmCanvas 
			drawTaskSendNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight
			color: color 
			stroke: stroke