query variables
queryBlock

	^(self searchValueAt: 'process-condition') 
		ifNil: [[:each | true]] 
		ifNotNil: [:blockString | 
						[blockString evaluate isBlock 
							ifTrue: [blockString evaluate] 
							ifFalse: [blockString isEmpty 
											ifTrue: [[:each | true]]
											ifFalse: [[:each | false] on: Error do: [:ex | [:each | false]]]]]]