events
drawAnonymousStartNamed: aString at: aPoint
	| start textPoint message |

	"message := self drawRectangleAt: aPoint + 10 width: 10 height: 10 stroke: self defultStartEventStroke fillColor: 'none'."
	message := self drawDecorationRectangleAt: aPoint + 10 id: 'rect-message' width: 10 height: 10 stroke: self defultStartEventStroke fillColor: 'none'.
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"
	start := self drawCircleAt: aPoint + 15 r: 15 stroke: self defultStartEventStroke fillColor: self defaultStartEventFillColor.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: start. "map the Activity name with the Activity id"

	self addFigure: message toGroup: self defaultNameForProcessGroup.
	self addFigure: start toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: start position textSizePx: self defaultEventNameSize) toGroup: self defaultNameForProcessGroup.

	^start