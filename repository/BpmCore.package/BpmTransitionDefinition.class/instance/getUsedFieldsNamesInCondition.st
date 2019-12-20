condition evaluation
getUsedFieldsNamesInCondition
	"The receiver answer a collection of used field names in condition"

	self hasCondition ifFalse: [^#()].

	^conditionToRun getAllFieldsNames