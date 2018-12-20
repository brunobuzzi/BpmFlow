activity multi role
drawMultiInstaceMultiRoleActivityNamed: aString roles: roles at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx tooltip: tooltip
	| rect center line1 line2 line3 textPoint textSize |

	center := (aPoint x + (extent x // 2)) @ (aPoint y + (extent y // 2) - 20) .

	rect := self drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx tooltip: tooltip.

	line1 := self drawLineFrom: ((center x - 5) @ (center y - 5)) to: ((center x - 5) @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	line2 := self drawLineFrom: (center x  @ (center y - 5)) to: (center x @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	line3 := self drawLineFrom: ((center x + 5) @ (center y - 5)) to: ((center x + 5) @ (center y + 5)) widthPx: '2px' stroke: 'black' fillColor: 'black'.

	self addFigure: line1 toGroup: self defaultNameForProcessGroup.
	self addFigure: line2 toGroup: self defaultNameForProcessGroup.
	self addFigure: line3 toGroup: self defaultNameForProcessGroup.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).
	textSize := Number fromString: (nameSizePx subStrings: 'px') first.
	roles do: [:roleName | 
		textPoint := textPoint x @ (textPoint y + textSize).
		self addFigure: (self drawText: roleName at: textPoint textSizePx: (textSize - 3) printString, 'px') toGroup: self defaultNameForProcessGroup.].

	^rect