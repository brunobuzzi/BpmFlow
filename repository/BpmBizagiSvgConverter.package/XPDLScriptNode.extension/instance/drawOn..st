*bpmbizagisvgconverter
drawOn: aJasvgiBpmCanvas

	^aJasvgiBpmCanvas 
			drawScriptNamed: self getName 
			at: self getXcoordinate @ self getYcoordinate 
			extent: self getWidth @ self getHeight