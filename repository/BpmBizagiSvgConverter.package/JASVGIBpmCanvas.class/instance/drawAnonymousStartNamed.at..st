events
drawAnonymousStartNamed: aString at: aPoint
	| start textPoint letterIcon1 letterIcon2 |

	"message := self drawRectangleAt: aPoint + 10 width: 10 height: 10 stroke: self defultStartEventStroke fillColor: 'none'."
	letterIcon1 := self drawDecorationRectangleAt: aPoint + 5 width: 20 height: 20 stroke: '#898484' strokeWidth: '2px' fillColor: 'none'.
	letterIcon2 := self drawDecorationRectangleAt: aPoint + 5 width: 20 height: 5 stroke: '#898484' fillColor: 'none'.
	"aPoint + 15 >> to fix a mismatch with Bizagi coordinates"
	start := self drawCircleAt: aPoint + 15 r: 15 stroke: self defultStartEventStroke fillColor: self defaultStartEventFillColor.

	textPoint := (aPoint x + (self defaultEventWidth // 3)) @ (aPoint y + (self defaultEventHeight // 2)).

	namesAndTags at: aString put: start. "map the Activity name with the Activity id"

	self addFigure: letterIcon1 toGroup: self defaultNameForProcessGroup.
	self addFigure: letterIcon2 toGroup: self defaultNameForProcessGroup.
	self addFigure: start toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: start position textSizePx: self defaultEventNameSize) toGroup: self defaultNameForProcessGroup.

	^start