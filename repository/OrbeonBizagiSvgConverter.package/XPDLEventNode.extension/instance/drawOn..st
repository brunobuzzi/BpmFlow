*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas

	aJasvgiBpmCanvas drawEventNamed: self getName at: self getXcoordinate @ self getYcoordinate.

	self isTimer ifTrue: [aJasvgiBpmCanvas drawEventNamed: (self getName, '_clock') at: self getXcoordinate @ self getYcoordinate radius: 10].