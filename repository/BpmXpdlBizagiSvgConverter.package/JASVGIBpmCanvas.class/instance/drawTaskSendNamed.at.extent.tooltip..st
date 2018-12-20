tasks
drawTaskSendNamed: aString at: aPoint extent: extent tooltip: tooltip

	^self drawTaskSendNamed: aString at: aPoint extent: extent color: self defaultTaskFillColor stroke: self defaultTaskStroke textSizePx: self defaultActivityNameSize tooltip: tooltip