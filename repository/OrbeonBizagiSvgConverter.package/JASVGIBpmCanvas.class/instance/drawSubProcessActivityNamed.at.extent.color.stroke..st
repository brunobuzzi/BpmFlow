activities
drawSubProcessActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke
	| process center lineH lineV smallRect |

	center := (aPoint x + (extent x // 2)) @ (aPoint y + 15 + (extent y // 2)).

	process := self drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke.

	lineH := self drawLineFrom: ((center x - 6) @ center y) to: ((center x + 6) @ center y) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	lineV := self drawLineFrom: (center x @ (center y - 6)) to: (center x @ (center y + 6)) widthPx: '3px' stroke: 'black' fillColor: 'black'.
	smallRect := self drawRoundRectangleAt: center - 8 height: 16 width: 16 fillColor: 'none' stroke: 'black'.

	self addFigure: smallRect toGroup: self defaultNameForProcessGroup.
	self addFigure: lineH toGroup: self defaultNameForProcessGroup.
	self addFigure: lineV toGroup: self defaultNameForProcessGroup.

	^process