subclassResponsibility
attributeValueAt: fieldName

	(self class allInstVarNames includes: fieldName) ifFalse: [^'No such instance variable [', fieldName, ']'].

	^self instVarNamed: fieldName asString