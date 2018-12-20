activities
drawActivityNamed: aString at: aPoint extent: extent color: color stroke: stroke textSizePx: nameSizePx tooltip: tooltip
	| rect textPoint |

	rect := self drawRoundRectangleAt: aPoint width: extent x height: extent y stroke: stroke fillColor: color tooltip: tooltip.

	textPoint := (aPoint x + 5) @ (aPoint y + 32).

	namesAndTags at: aString put: rect. "map the Activity name with the Activity id"

	self addFigure: rect toGroup: self defaultNameForProcessGroup.
	(bpmProcess notNil and: [bpmProcess isProcessDefinition and:[(self getUrlForOrbeonFormDefinitionNamed: aString) notNil]])
	ifTrue: [self addFigure: (self drawAnchor: aString at: textPoint url: (self getUrlForOrbeonFormDefinitionNamed: aString) textSizePx: nameSizePx) toGroup: self defaultNameForProcessGroup]
	ifFalse: [self addFigure: (self drawText: aString at: textPoint textSizePx: nameSizePx) toGroup: self defaultNameForProcessGroup].

	^rect