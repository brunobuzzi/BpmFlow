query variables
queryBlock

	^(self searchValueAt: 'process-condition') 
		ifNil: [[:each | true]] 
		ifNotNil: [:blockString | blockString evaluate]