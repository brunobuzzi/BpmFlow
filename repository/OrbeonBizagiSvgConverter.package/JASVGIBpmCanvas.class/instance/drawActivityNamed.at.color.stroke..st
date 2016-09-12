bpm figure
drawActivityNamed: aString at: aPoint color: color stroke: stroke

	^self drawActivityNamed: aString at: aPoint extent: (self defaultTaskWidth @ self defaultTaskHeight) color: color stroke: stroke