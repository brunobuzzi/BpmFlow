visiting
getAllPossibleLoops
	""

	^self getAllPossiblePath select: [:pathCollection | 
		(pathCollection collect: [:each | each transition]) asSet size ~= pathCollection size
	]