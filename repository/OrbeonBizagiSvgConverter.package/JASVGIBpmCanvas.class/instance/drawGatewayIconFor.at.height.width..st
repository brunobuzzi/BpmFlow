gateways
drawGatewayIconFor: type at: aPoint height: height width: width
	| center |

	center := (aPoint x + (width // 2)) @ (aPoint y + (height // 2)) + 5.

	(type = 'Inclusive') ifTrue: [
		^self addFigure: (self drawCircleAt: center r: 10 strokeWidth: '3px' stroke: 'black' fillColor: 'none') toGroup: self defaultNameForProcessGroup].

	(type = 'Parallel')
	ifTrue: [| lineH lineV |
		lineH := self drawLineFrom: ((center x - 10) @ center y) to: ((center x + 10) @ center y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		lineV := self drawLineFrom: (center x @ (center y - 10)) to: (center x @ (center y + 10)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		self addFigure: lineV toGroup: self defaultNameForProcessGroup.
		^self addFigure: lineH toGroup: self defaultNameForProcessGroup].

	(type = '' "Exclusive")
	ifTrue: [| lineD1 lineD2 |
		lineD1 := self drawLineFrom: ((center x - 7) @ (center y - 7)) to: ((center x + 7) @ (center y + 7)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		lineD2 := self drawLineFrom: ((center x - 7) @ (center y + 7)) to: ((center x + 7) @ (center y - 7)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
		self addFigure: lineD1 toGroup: self defaultNameForProcessGroup.
		^self addFigure: lineD2 toGroup: self defaultNameForProcessGroup].

	^self addFigure: (self drawCircleAt: center r: 10 stroke: 'red' fillColor: 'red') toGroup: self defaultNameForProcessGroup