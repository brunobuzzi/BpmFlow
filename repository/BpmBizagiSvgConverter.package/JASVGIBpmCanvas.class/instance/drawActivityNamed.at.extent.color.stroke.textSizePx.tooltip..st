activities
drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke textSizePx: textSizePx tooltip: tooltip
	| rect textPoint |

	rect := self drawRoundRectangleAt: aPoint 
						id: UUID new asString 
						width: extent x 
						height: extent y 
						rx: 5 
						ry: 5 
						strokeWidth: '1px' 
						stroke: stroke 
						fillColor: color 
						tooltip: tooltip.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint textSizePx: textSizePx) toGroup: self defaultNameForProcessGroup.

	^rect