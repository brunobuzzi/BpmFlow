bpm figure
drawLaneNamed: aString at: aPoint width: width height: height color: color stroke: stroke
	| rect |

	rect := self drawRoundRectangleAt: aPoint 
						height: height 
						width: width 
						fillColor: color
						stroke: stroke.

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: aPoint - 10) toGroup: self defaultNameForProcessGroup.

	^rect