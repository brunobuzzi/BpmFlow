searching
getTimerNodes

	^self getEventNodes select: [:each | each isTimerNode]