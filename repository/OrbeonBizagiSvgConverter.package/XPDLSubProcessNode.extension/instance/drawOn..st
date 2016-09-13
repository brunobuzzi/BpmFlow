*orbeonBizagiSvgConverter
drawOn: aJasvgiBpmCanvas
	| process lineH lineV corner center smallRect |

	corner := self getXcoordinate @ self getYcoordinate.
	center := (corner x + (self getWidth // 2)) @ (corner y + 15 + (self getHeight // 2)).
	process := aJasvgiBpmCanvas drawActivityNamed: self getName at: corner extent: self getWidth @ self getHeight.

	lineH := aJasvgiBpmCanvas drawLineFrom: ((center x - 6) @ center y) to: ((center x + 6) @ center y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	lineV := aJasvgiBpmCanvas drawLineFrom: (center x @ (center y - 6)) to: (center x @ (center y + 6)) widthPx: '3px' stroke: 'black' fillColor: 'black'.

	smallRect := aJasvgiBpmCanvas drawRoundRectangleAt: center - 8 height: 16 width: 16 fillColor: 'none' stroke: 'black'.

	aJasvgiBpmCanvas addFigure: smallRect toGroup: aJasvgiBpmCanvas defaultNameForProcessGroup.
	aJasvgiBpmCanvas addFigure: lineH toGroup: aJasvgiBpmCanvas defaultNameForProcessGroup.
	aJasvgiBpmCanvas addFigure: lineV toGroup: aJasvgiBpmCanvas defaultNameForProcessGroup.

	^process