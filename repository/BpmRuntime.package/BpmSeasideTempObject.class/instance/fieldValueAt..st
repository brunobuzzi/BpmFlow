subclassResponsibility
fieldValueAt: fieldName
	"Answer the converted value (a Smalltalk object) for the field named <fieldName>"

	^(self class canUnderstand: fieldName asSymbol)
		ifTrue: [self perform: fieldName asSymbol]
		ifFalse: [self attributeValueAt: fieldName]