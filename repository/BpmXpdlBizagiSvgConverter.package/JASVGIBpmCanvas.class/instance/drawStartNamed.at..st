events
drawStartNamed: aString at: aPoint
	| start textPoint |
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"
	start := self drawCircleAt: aPoint + 15 r: 15 stroke: self defultStartEventStroke fillColor: self defaultStartEventFillColor .

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: start. "map the Activity name with the Activity id"

	self addFigure: start toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: start position textSizePx: self defaultEventNameSize) toGroup: self defaultNameForProcessGroup.

	^start