query variables
queryBlock

	^(self searchValueAt: 'process-condition') 
		ifNil: [[:each | true]] 
		ifNotNil: [:blockString | [blockString evaluate] on: Error do: [:ex | [:each | false]]]