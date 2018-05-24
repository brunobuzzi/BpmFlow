query variables
getProcessNumberFieldList

	^self getBasicProcessFieldList select: [:fieldName | (fieldName indexOfSubCollection: '[n]') ~= 0]