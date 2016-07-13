other
getObjectModel

	^self getComponentClass 
			ifNotNil: [:value | value defaultModel]
			ifNil: [nil]