lanes
drawLaneNamed: aString at: aPoint width: width height: height color: color stroke: stroke
	| rect roleRect laneName laneNameCenter |

	laneNameCenter := ((aPoint x - 20) @ (aPoint y + (height // 2) + 35)).
	rect := self drawRectangleAt: aPoint height: height width: width fillColor: color stroke: stroke.
	roleRect := self drawRectangleAt: ((aPoint x - 50) @ aPoint y) height: height width: 50 fillColor: color stroke: stroke.
	laneName := self drawText: aString at: laneNameCenter textSizePx: '14px'.

	laneName transform: 'rotate(-90 ', laneNameCenter x printString, ' ', laneNameCenter y printString, ')'.

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: roleRect toGroup: self defaultNameForProcessGroup.
	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: laneName toGroup: self defaultNameForProcessGroup.

	^rect