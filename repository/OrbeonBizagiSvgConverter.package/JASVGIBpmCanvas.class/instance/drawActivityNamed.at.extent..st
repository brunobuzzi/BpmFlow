activities
drawActivityNamed: aString at: aPoint extent: extentPoint

	^self drawActivityNamed: aString at: aPoint extent: (extentPoint x @ extentPoint y) color: self defaultTaskFillColor stroke: self defaultTaskStroke