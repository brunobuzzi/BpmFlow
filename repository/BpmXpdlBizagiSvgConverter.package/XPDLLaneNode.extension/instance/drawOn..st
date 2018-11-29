*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas
		drawLaneNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate 
		width: self getWidth
		height: self getHeight