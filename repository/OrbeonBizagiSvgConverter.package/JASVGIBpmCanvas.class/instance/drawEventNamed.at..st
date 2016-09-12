bpm figure
drawEventNamed: aString at: aPoint
	| event textPoint |
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"
	event := self drawCircleAt: aPoint + 15 r: 15 fillColor: self defaultEventFillColor stroke: self defultEventStroke strokeWidth: '2'.
	event id: aString.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: event. "map the Activity name with the Activity id"

	self addFigure: event toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: event position) toGroup: self defaultNameForProcessGroup.

	^event