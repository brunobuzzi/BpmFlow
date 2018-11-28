*bpmbizagisvgconverter
drawOn: aJasvgiBpmCanvas color: color stroke: stroke 

	^aJasvgiBpmCanvas 
		drawSubProcessActivityNamed: self getName 
		at: self getXcoordinate @ self getYcoordinate
		extent: self getWidth @ self getHeight 
		color: color 
		stroke: stroke