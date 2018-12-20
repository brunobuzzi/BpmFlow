activity multi role
drawMultiRoleActivityNamed: aString roles: roles at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx tooltip: tooltip
	| rect textPoint textSize |

	rect := self drawRoundRectangleAt: aPoint width: extent x height: extent y stroke: stroke fillColor: color tooltip: tooltip.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint textSizePx: nameSizePx) toGroup: self defaultNameForProcessGroup.

	textSize := Number fromString: (nameSizePx subStrings: 'px') first.
	roles do: [:roleName | 
		textPoint := textPoint x @ (textPoint y + textSize).
		self addFigure: (self drawText: roleName at: textPoint textSizePx: (textSize - 3) printString, 'px') toGroup: self defaultNameForProcessGroup.].

	^rect