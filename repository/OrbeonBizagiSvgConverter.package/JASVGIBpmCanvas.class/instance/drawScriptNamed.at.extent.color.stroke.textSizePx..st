script
drawScriptNamed: aString at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx
	| rect textPoint scriptRect scriptLine1 scriptLine2 scriptLine3 scriptPoint1 scriptPoint2 scriptPoint3 |

	rect := self drawRoundRectangleAt: aPoint width: extent x height: extent y stroke: stroke fillColor: color.
	scriptRect := self drawRoundRectangleAt: (aPoint + 5) width: 10 height: 15 stroke: stroke fillColor: color.
	scriptPoint1 := (aPoint x + 7) @ (aPoint y + 9).
	scriptLine1 := self drawLineFrom: scriptPoint1 to: ((scriptPoint1 x + 6) @ scriptPoint1 y).
	scriptPoint2 := scriptPoint1 x @ (scriptPoint1 y + 3).
	scriptLine2 := self drawLineFrom: scriptPoint2 to: ((scriptPoint2 x + 6) @ scriptPoint2 y).
	scriptPoint3 := scriptPoint2 x @ (scriptPoint2 y + 3).
	scriptLine3 := self drawLineFrom: scriptPoint3 to: ((scriptPoint3 x + 6) @ scriptPoint3 y).

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	self addFigure: scriptRect toGroup: self defaultNameForProcessGroup.
	self addFigure: scriptLine1 toGroup: self defaultNameForProcessGroup.
	self addFigure: scriptLine2 toGroup: self defaultNameForProcessGroup.
	self addFigure: scriptLine3 toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: aString at: textPoint textSizePx: nameSizePx) toGroup: self defaultNameForProcessGroup.

	^rect