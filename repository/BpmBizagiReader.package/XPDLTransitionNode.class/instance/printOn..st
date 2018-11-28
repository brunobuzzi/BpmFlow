other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: 
					'[(',
					(startNode ifNil: ['NoStNode'] ifNotNil: [:value | value shortType]), 
					')', 
					(startNode ifNil: ['NoStNode'] ifNotNil: [:value | value getName]), 
					'>>', 
					(endNode ifNil: ['NoEndNode'] ifNotNil: [:value | value getName]), 
					'(', 
					(endNode ifNil: ['NoEndNode'] ifNotNil: [:value | value shortType]), 
					')]'.