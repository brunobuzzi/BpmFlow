other
getModelOrSubProcess

	^subProcess ifNil: [^model] ifNotNil: [:value | value]