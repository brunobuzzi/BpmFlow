subclassResponsibility
isRepeatable: fieldName
	"Answer whether or not the field named <fieldName> is repeatable"

	^#('quantity' 'isLocal') includes: fieldName