activities
drawMultiInstaceActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke
	| rect center line1 line2 line3 |

	center := (aPoint x + (extent x // 2)) @ (aPoint y + (extent y // 2) + 20) .

	rect := self drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke.

	line1 := self drawLineFrom: ((center x - 5) @ (center y - 5)) to: ((center x - 5) @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	line2 := self drawLineFrom: (center x  @ (center y - 5)) to: (center x @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	line3 := self drawLineFrom: ((center x + 5) @ (center y - 5)) to: ((center x + 5) @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.

	self addFigure: line1 toGroup: self defaultNameForProcessGroup.
	self addFigure: line2 toGroup: self defaultNameForProcessGroup.
	self addFigure: line3 toGroup: self defaultNameForProcessGroup.

	^rect