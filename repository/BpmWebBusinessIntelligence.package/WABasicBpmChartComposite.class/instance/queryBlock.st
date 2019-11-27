query variables
queryBlock
	"The receiver answer <aBlock> to be used as an arugment of a #select: message.
	If it is invalid answer: [:e | false].
	If not block is present or query block is empty answer: [:e | true].

	See issue: #1029"

	^((self searchValueAt: 'process-condition') 
		ifNil: [[[:each | true]]] 
		ifNotNil: [:blockString | 
						[blockString evaluate isBlock 
							ifTrue: [blockString evaluate] 
							ifFalse: [blockString isEmpty 
											ifTrue: [[:each | true]]
											ifFalse: [[:each | false] on: Error do: [:ex | [:each | false]] ]
							]
						]
					]) value