events
drawMessageEvent: anXPDLEventNode at: aPoint
	| center envelopeRect envelopeLine1 envelopeLine2 rectCorner |

	center := (anXPDLEventNode getWidth = 30)
		ifTrue: [(anXPDLEventNode getXcoordinate @ anXPDLEventNode getYcoordinate) + (anXPDLEventNode getWidth asNumber // 2)]
		ifFalse: [anXPDLEventNode getXcoordinate @ anXPDLEventNode getYcoordinate].

	self drawEventNamed: anXPDLEventNode getName at: center radius: (anXPDLEventNode getWidth asNumber // 2) stroke: self defultEventStroke color: '#90a5bd'.

	rectCorner := (center x - 10) @ (center y - 6).
	envelopeRect := self drawDecorationRectangleAt: rectCorner width: 21 height: 12 stroke: 'black' fillColor: 'darkred'.
	self addFigure: envelopeRect toGroup: self defaultNameForProcessGroup.

	envelopeLine1 := self drawLineFrom: rectCorner to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
	envelopeLine2 := self drawLineFrom: ((rectCorner x + 21) @ (rectCorner y)) to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.

	self addFigure: envelopeLine1 toGroup: self defaultNameForProcessGroup.
	self addFigure: envelopeLine2 toGroup: self defaultNameForProcessGroup.