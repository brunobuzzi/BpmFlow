script
drawScriptNamed: aString at: aPoint color: color stroke: stroke

	^self drawScriptNamed: aString at: aPoint extent: (self defaultTaskWidth @ self defaultTaskHeight) color: color stroke: stroke