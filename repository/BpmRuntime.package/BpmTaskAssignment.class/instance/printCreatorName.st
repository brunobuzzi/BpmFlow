other
printCreatorName

	^self creator ifNotNil: [:value | value username] ifNil: ['']