tasks
drawTaskSendNamed: aString at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx
	| rect textPoint envelopeRect envelopeLine1 envelopeLine2 |

	rect := self drawRoundRectangleAt: aPoint width: extent x height: extent y stroke: stroke fillColor: color.
	envelopeRect := self drawRectangleAt: (aPoint + 5) width: 20 height: 10 stroke: 'white' fillColor: 'black'.

	envelopeLine1 := self drawLineFrom: (aPoint + 5) to: ((aPoint x + 5 + 10) @ (aPoint y + 5 + 5)) widthPx: 1 stroke: 'white' fillColor: 'white'.

	envelopeLine2 := self drawLineFrom: ((aPoint x + 5 + 10) @ (aPoint y + 5 + 5)) to: (aPoint x + 5 + 20) @ (aPoint y + 5) widthPx: 1 stroke: 'white' fillColor: 'white'.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: envelopeRect toGroup: self defaultNameForProcessGroup.
	self addFigure: envelopeLine1 toGroup: self defaultNameForProcessGroup.
	self addFigure: envelopeLine2 toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint textSizePx: nameSizePx) toGroup: self defaultNameForProcessGroup.

	^rect