activities
drawActivityNamed: aString at: aPoint color: color stroke: stroke textSizePx: nameSizePx

	^self drawActivityNamed: aString at: aPoint extent: (self defaultTaskWidth @ self defaultTaskHeight) color: color stroke: stroke textSizePx: nameSizePx