events
drawEndNamed: aString at: aPoint
	| end textPoint |
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"
	end := self drawCircleAt: aPoint + 15 r: 15 fillColor: self defaultEndEventFillColor stroke: self defultEndEventStroke strokeWidth: '3'.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: end. "map the Activity name with the Activity id"

	self addFigure: end toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: end position textSizePx: self defaultEventNameSize) toGroup: self defaultNameForProcessGroup.

	^end