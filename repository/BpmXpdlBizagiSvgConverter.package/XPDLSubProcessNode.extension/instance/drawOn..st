*bpmxpdlbizagisvgconverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas 
		drawSubProcessActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate 
		extent: self getWidth @ self getHeight