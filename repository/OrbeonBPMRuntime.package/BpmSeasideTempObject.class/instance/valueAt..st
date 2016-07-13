subclassResponsibility
valueAt: fieldName

	^(self class canUnderstand: fieldName asSymbol)
		ifTrue: [self perform: fieldName asSymbol]
		ifFalse: [self attributeValueAt: fieldName]